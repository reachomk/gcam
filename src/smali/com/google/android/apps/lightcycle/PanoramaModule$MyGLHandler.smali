.class final Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;
.super Landroid/os/Handler;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGLHandler"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1845
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    .line 1846
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1847
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1858
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1880
    :cond_0
    :goto_0
    return-void

    .line 1860
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    goto :goto_0

    .line 1865
    :pswitch_1
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "MSG_RESIZE_RENDERER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1868
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->resetOrientation()V

    .line 1869
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->resizeFrameDisplay()V

    goto :goto_0

    .line 1873
    :pswitch_2
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_UPDATE_ORIENTATION"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$MyGLHandler;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->resetOrientation()V

    goto/16 :goto_0

    .line 1858
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
