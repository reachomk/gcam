.class final Lcom/android/camera/one/v2/imagesaver/tuning/TuningSetpropInitializer;
.super Ljava/lang/Object;
.source "TuningSetpropInitializer.java"

# interfaces
.implements Lcom/android/camera/one/v2/lifecycle/StartTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {}, Lcom/android/camera/util/SystemProperties;->instance()Lcom/android/camera/util/SystemProperties;

    move-result-object v0

    const-string v1, "persist.camera.dumpmetadata"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/util/SystemProperties;->setString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    invoke-static {}, Lcom/android/camera/util/SystemProperties;->instance()Lcom/android/camera/util/SystemProperties;

    move-result-object v0

    const-string v1, "persist.camera.debug_ui"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/util/SystemProperties;->setString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    invoke-static {}, Lcom/android/camera/util/SystemProperties;->instance()Lcom/android/camera/util/SystemProperties;

    move-result-object v0

    const-string v1, "persist.camera.frame_log"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/util/SystemProperties;->setString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
