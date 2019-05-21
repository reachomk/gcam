.class public final Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;
.super Ljava/lang/Object;
.source "ImageSaverTrace.java"


# instance fields
.field private final inputImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final processingMethod:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

.field private final reprocessingMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->processingMethod:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    .line 43
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->inputImages:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->reprocessingMetadata:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 89
    instance-of v0, p1, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->processingMethod:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    move-object v0, p1

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->processingMethod:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    .line 90
    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->inputImages:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->inputImages:Ljava/util/List;

    .line 91
    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->reprocessingMetadata:Ljava/util/List;

    check-cast p1, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;

    iget-object v1, p1, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->reprocessingMetadata:Ljava/util/List;

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 89
    goto :goto_0
.end method

.method public final getInputImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->inputImages:Ljava/util/List;

    return-object v0
.end method

.method public final getProcessingMethod()Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->processingMethod:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    return-object v0
.end method

.method public final getReprocessingMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->reprocessingMetadata:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->processingMethod:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->inputImages:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->reprocessingMetadata:Ljava/util/List;

    aput-object v2, v0, v1

    .line 1079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 84
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    const-string v0, "ImageSaverTrace"

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "ProcessingMethod"

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->processingMethod:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Input Image Metadata"

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->inputImages:Ljava/util/List;

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Reprocessing Metadata"

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;->reprocessingMetadata:Ljava/util/List;

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    return-object v0
.end method
