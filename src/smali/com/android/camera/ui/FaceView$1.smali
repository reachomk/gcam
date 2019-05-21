.class final Lcom/android/camera/ui/FaceView$1;
.super Landroid/os/Handler;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/FaceView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FaceView;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/FaceView;->access$002(Lcom/android/camera/ui/FaceView;Z)Z

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {v1}, Lcom/android/camera/ui/FaceView;->access$200(Lcom/android/camera/ui/FaceView;)[Landroid/hardware/Camera$Face;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/FaceView;->access$102(Lcom/android/camera/ui/FaceView;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 67
    :cond_0
    return-void
.end method
