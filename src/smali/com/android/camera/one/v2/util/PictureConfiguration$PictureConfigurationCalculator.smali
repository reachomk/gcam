.class final Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;
.super Ljava/lang/Object;
.source "PictureConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/util/PictureConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PictureConfigurationCalculator"
.end annotation


# instance fields
.field private final cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final desiredSize:Lcom/android/camera/util/Size;

.field private final outputFormat:I


# direct methods
.method private constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;I)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 206
    iput-object p2, p0, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->desiredSize:Lcom/android/camera/util/Size;

    .line 207
    iput p3, p0, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->outputFormat:I

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;IB)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;)Lcom/android/camera/one/v2/util/PictureConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->computeConfiguration()Lcom/android/camera/one/v2/util/PictureConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private final computeConfiguration()Lcom/android/camera/one/v2/util/PictureConfiguration;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget v1, p0, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->outputFormat:I

    .line 223
    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    new-instance v0, Lcom/android/camera/one/OneCameraAccessException;

    iget v1, p0, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->outputFormat:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No picture sizes supported for format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/one/OneCameraAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->desiredSize:Lcom/android/camera/util/Size;

    .line 229
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->getSmallestSupportedSizeContainingTarget(Ljava/util/List;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v2

    .line 230
    iget-object v1, p0, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->desiredSize:Lcom/android/camera/util/Size;

    invoke-static {v1}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    .line 1273
    invoke-virtual {v1, v2}, Lcom/android/camera/util/AspectRatio;->getLargestCenterCrop(Lcom/android/camera/util/Size;)Landroid/graphics/Rect;

    move-result-object v5

    .line 231
    invoke-static {v0}, Lcom/android/camera/util/Size;->largestByArea(Ljava/util/List;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;

    iget v3, p0, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->outputFormat:I

    invoke-direct {v1, v3, v2}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;-><init>(ILcom/android/camera/util/Size;)V

    .line 234
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;

    iget v3, p0, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->outputFormat:I

    invoke-direct {v2, v3, v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;-><init>(ILcom/android/camera/util/Size;)V

    .line 236
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v3

    .line 237
    iget-object v4, p0, Lcom/android/camera/one/v2/util/PictureConfiguration$PictureConfigurationCalculator;->desiredSize:Lcom/android/camera/util/Size;

    .line 240
    new-instance v0, Lcom/android/camera/one/v2/util/PictureConfiguration;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/util/PictureConfiguration;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;Lcom/google/common/base/Optional;Lcom/android/camera/util/Size;Landroid/graphics/Rect;B)V

    return-object v0
.end method

.method private static getSmallestSupportedSizeContainingTarget(Ljava/util/List;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/util/Size;",
            ")",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 251
    const/4 v1, 0x0

    .line 252
    const-wide v4, 0x7fffffffffffffffL

    .line 253
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 254
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    .line 255
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 256
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    if-lt v7, v8, :cond_3

    cmp-long v7, v2, v4

    if-gez v7, :cond_3

    move-wide v9, v2

    move-object v2, v0

    move-wide v0, v9

    :goto_2
    move-wide v4, v0

    move-object v1, v2

    .line 261
    goto :goto_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :cond_1
    if-nez v1, :cond_2

    .line 266
    invoke-static {p0}, Lcom/android/camera/util/Size;->largestByArea(Ljava/util/List;)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 269
    :cond_2
    return-object v1

    :cond_3
    move-object v2, v1

    move-wide v0, v4

    goto :goto_2
.end method
