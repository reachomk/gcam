.class public final Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;
.super Lcom/google/android/libraries/smartburst/artifacts/Artifact;
.source "CollageArtifact.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;
    }
.end annotation


# instance fields
.field private final mLayout:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

.field private final mSlotFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/renderers/SlotFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;Ljava/util/List;Ljava/lang/String;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/renderers/SlotFrame;",
            ">;",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/google/android/libraries/smartburst/artifacts/Artifact;-><init>(Ljava/lang/String;IJ)V

    .line 70
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->mLayout:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    .line 73
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->mSlotFrames:Ljava/util/List;

    .line 74
    return-void
.end method

.method private final getCollageDimensions(I)[I
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->mLayout:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    .line 1152
    iget v1, v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;->width:I

    .line 1153
    iget v0, v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;->height:I

    .line 1154
    if-ge v1, v0, :cond_0

    .line 1155
    int-to-float v2, p1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1162
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    .line 143
    return-object v1

    .line 1158
    :cond_0
    int-to-float v2, p1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v3, v0

    move v0, p1

    move p1, v3

    .line 1159
    goto :goto_0
.end method

.method private getMetadata$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMQPB4D5GIUKRLDLMM2SJP7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6RB1E9Q64TBIEDQ2USRKDTP62PR55T0N4T39CPGM6T2DCLQ62P31EHGJM___()Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;"
        }
    .end annotation

    .prologue
    .line 79
    const/16 v0, 0x9c4

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->getCollageDimensions(I)[I

    move-result-object v0

    .line 80
    new-instance v1, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/artifacts/Artifact;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/jpeg"

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/artifacts/Artifact;->getTimestampNs()J

    move-result-wide v4

    const/4 v6, 0x0

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v0, v7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;JII)V

    return-object v1
.end method

.method private final renderFramesToCollageImage(Ljava/util/List;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;ILjava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/renderers/SlotFrame;",
            ">;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
            "I",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapHandle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->mLayout:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;->slots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 122
    int-to-float v0, p4

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->mLayout:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    iget v3, v3, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;->width:I

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->mLayout:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    iget v4, v4, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;->height:I

    .line 123
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 126
    invoke-direct {p0, p4}, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->getCollageDimensions(I)[I

    move-result-object v3

    .line 127
    aget v2, v3, v2

    aget v1, v3, v1

    .line 128
    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/utils/Size;->of(II)Lcom/google/android/libraries/smartburst/utils/Size;

    move-result-object v1

    const-string v2, "collage canvas"

    .line 127
    invoke-static {p3, v1, v2}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->createBlankWhiteBitmap(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/google/android/libraries/smartburst/utils/Size;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;

    invoke-direct {v2, p2, v0, p3, v1}, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;-><init>(Lcom/google/android/libraries/smartburst/media/Summary;FLcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/google/android/libraries/smartburst/media/BitmapHandle;)V

    .line 135
    invoke-static {p1, p5, v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->forEach(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 136
    invoke-static {v1}, Lcom/google/android/libraries/smartburst/utils/Functions;->constant(Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v1

    invoke-virtual {v0, p5, v1}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 135
    return-object v0

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic getMetadata(Lcom/google/android/libraries/smartburst/media/Summary;)Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->getMetadata$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMQPB4D5GIUKRLDLMM2SJP7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6RB1E9Q64TBIEDQ2USRKDTP62PR55T0N4T39CPGM6T2DCLQ62P31EHGJM___()Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final getSourceTimestampsNs()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->mSlotFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SlotFrame;

    .line 263
    iget-wide v4, v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/SlotFrame;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_0
    return-object v1
.end method

.method public final rasterize(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/storage/RasterSink;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Lcom/google/android/libraries/smartburst/storage/RasterSink",
            "<",
            "Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->mSlotFrames:Ljava/util/List;

    const/16 v4, 0x9c4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->renderFramesToCollageImage(Ljava/util/List;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;ILjava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 91
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->getMetadata$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMQPB4D5GIUKRLDLMM2SJP7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6RB1E9Q64TBIEDQ2USRKDTP62PR55T0N4T39CPGM6T2DCLQ62P31EHGJM___()Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;->streamBitmapHandle(Lcom/google/android/libraries/smartburst/storage/RasterSink;Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;)Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method public final rasterizePreview(Lcom/google/android/libraries/smartburst/media/Summary;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/DrawableResource",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->mSlotFrames:Ljava/util/List;

    const/16 v4, 0x280

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;->renderFramesToCollageImage(Ljava/util/List;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;ILjava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 101
    invoke-static {p4, p2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;->copyIntoDrawableResource(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Landroid/content/Context;)Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 99
    return-object v0
.end method
