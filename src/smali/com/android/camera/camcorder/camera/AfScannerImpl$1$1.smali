.class final Lcom/android/camera/camcorder/camera/AfScannerImpl$1$1;
.super Ljava/lang/Object;
.source "AfScannerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camcorder/camera/AfScannerImpl$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/camcorder/camera/AfScannerImpl$1;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/AfScannerImpl$1;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/AfScannerImpl$1$1;->this$1:Lcom/android/camera/camcorder/camera/AfScannerImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/android/camera/camcorder/camera/AfScannerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Execute AF reset runnable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScannerImpl$1$1;->this$1:Lcom/android/camera/camcorder/camera/AfScannerImpl$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/camera/AfScannerImpl$1;->this$0:Lcom/android/camera/camcorder/camera/AfScannerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/AfScannerImpl;->access$100(Lcom/android/camera/camcorder/camera/AfScannerImpl;)Lcom/google/android/apps/camera/async/Updatable;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScannerImpl$1$1;->this$1:Lcom/android/camera/camcorder/camera/AfScannerImpl$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/camera/AfScannerImpl$1;->this$0:Lcom/android/camera/camcorder/camera/AfScannerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/AfScannerImpl;->access$200(Lcom/android/camera/camcorder/camera/AfScannerImpl;)Lcom/google/android/apps/camera/async/Updatable;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScannerImpl$1$1;->this$1:Lcom/android/camera/camcorder/camera/AfScannerImpl$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/camera/AfScannerImpl$1;->val$afResetRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 75
    return-void
.end method
