.class final Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl$2;
.super Ljava/lang/Object;
.source "CaptureIndicatorControllerImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/android/camera/storage/cache/OrientationBitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl$2;->this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exception retrieving cached indicator Bitmap"

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 85
    check-cast p1, Lcom/android/camera/storage/cache/OrientationBitmap;

    .line 1088
    invoke-static {}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "retrieved indicator Bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    if-eqz p1, :cond_0

    .line 1090
    invoke-static {}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updating indicator Bitmap from cache"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl$2;->this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;

    iget-object v1, p1, Lcom/android/camera/storage/cache/OrientationBitmap;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/android/camera/storage/cache/OrientationBitmap;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 85
    :cond_0
    return-void
.end method
