.class final Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer$1;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "ArtifactGenerationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/VoidFunction",
        "<",
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;

.field private synthetic val$artifactSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;Lcom/android/camera/session/StackableSession;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer$1;->this$1:Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;

    iput-object p2, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer$1;->val$artifactSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 422
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;

    .line 1425
    sget-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->RENDER_PHOTO:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 1426
    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer$1;->this$1:Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;

    .line 1428
    invoke-static {v1}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;->access$400(Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer;)Lcom/google/android/libraries/smartburst/artifacts/Artifact;

    move-result-object v1

    .line 1429
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/artifacts/Artifact;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Video_VFR"

    .line 1430
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1431
    sget-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->RENDER_VIDEO:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 1433
    :cond_0
    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$ArtifactRasterizer$1;->val$artifactSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    const v2, 0x7f0a01ec

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1434
    invoke-static {v2, v3}, Lcom/android/camera/ui/PreviewContentNoOp;->from(I[Ljava/lang/Object;)Lcom/android/camera/ui/UiString;

    move-result-object v2

    .line 1433
    invoke-interface {v1, p1, v2, v0}, Lcom/android/camera/session/StackableSession;->startSession(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;Lcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V

    .line 422
    return-void
.end method
