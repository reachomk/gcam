.class final Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory$1;
.super Ljava/lang/Object;
.source "SingleNoFlashCommandFactory.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->create(Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
        "Lcom/google/android/apps/camera/async/Observable",
        "<",
        "Lcom/android/camera/one/v2/core/Request;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic val$transformer:Lcom/android/camera/one/v2/common/RequestTransformer;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/common/RequestTransformer;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory$1;->val$transformer:Lcom/android/camera/one/v2/common/RequestTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 82
    check-cast p1, Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    .line 1086
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 1088
    invoke-static {v7}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forTemplateType(I)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v5, [Lcom/android/camera/one/v2/core/Request$Parameter;

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1093
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v1, v6

    .line 1089
    invoke-static {v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameters([Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory$1;->val$transformer:Lcom/android/camera/one/v2/common/RequestTransformer;

    aput-object v1, v0, v7

    .line 1087
    invoke-virtual {p1, v0}, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->with([Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    move-result-object v0

    .line 82
    return-object v0
.end method
