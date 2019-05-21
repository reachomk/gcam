.class public final Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;
.super Ljava/lang/Object;
.source "ImageReaderFormat.java"


# instance fields
.field private final imageFormat:I

.field private final size:Lcom/android/camera/util/Size;


# direct methods
.method public constructor <init>(ILcom/android/camera/util/Size;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->imageFormat:I

    .line 18
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->size:Lcom/android/camera/util/Size;

    .line 19
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 38
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;

    .line 1026
    iget v0, v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->imageFormat:I

    .line 40
    iget v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->imageFormat:I

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;

    .line 2022
    iget-object v0, p1, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->size:Lcom/android/camera/util/Size;

    .line 41
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->size:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 38
    goto :goto_0
.end method

.method public final getImageFormat()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->imageFormat:I

    return v0
.end method

.method public final getSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->size:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->imageFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->size:Lcom/android/camera/util/Size;

    aput-object v2, v0, v1

    .line 2079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 45
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    const-string v0, "ImageReaderFormat"

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "ImageFormat"

    iget v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->imageFormat:I

    .line 32
    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->imageFormatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Size"

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->size:Lcom/android/camera/util/Size;

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method
