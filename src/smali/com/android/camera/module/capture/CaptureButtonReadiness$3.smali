.class final Lcom/android/camera/module/capture/CaptureButtonReadiness$3;
.super Ljava/lang/Object;
.source "CaptureButtonReadiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureButtonReadiness;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureButtonReadiness;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$3;->this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$3;->this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->access$000(Lcom/android/camera/module/capture/CaptureButtonReadiness;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$3;->this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->access$002(Lcom/android/camera/module/capture/CaptureButtonReadiness;Z)Z

    .line 109
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$3;->this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->access$100(Lcom/android/camera/module/capture/CaptureButtonReadiness;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 110
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$3;->this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->access$300(Lcom/android/camera/module/capture/CaptureButtonReadiness;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 111
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$3;->this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->access$500(Lcom/android/camera/module/capture/CaptureButtonReadiness;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method
