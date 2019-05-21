.class final Lcom/google/android/apps/lightcycle/PanoramaModule$3;
.super Lcom/android/camera/ui/PreviewStatusListenerNoSurfaceHolderImpl;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Lcom/android/camera/ui/PreviewStatusListenerNoSurfaceHolderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$700(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method public final onPreviewFlipped()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    .line 317
    return-void
.end method

.method public final onPreviewLayoutChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR954KIIA9954KIAAM(IIII)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/gl/SurfaceTextureRenderer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCameraAvailable queued before onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0, p2}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1102(Lcom/google/android/apps/lightcycle/PanoramaModule;I)I

    .line 328
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0, p3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1202(Lcom/google/android/apps/lightcycle/PanoramaModule;I)I

    .line 330
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    .line 334
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOBGE0NK6OBDCLP62GB3EHKNCQBKF51MURJKE9NMOR35E8TG____(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->clearPreviewTransform()V

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOBGE0NK6OBDCLP62GB3EHKNCQBKF51MURJKE9NMOR35E8TG____(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->setDefaultBufferSizeToViewDimens()V

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    new-instance v1, Lcom/android/camera/gl/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/gl/SurfaceTextureRenderer;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;Lcom/android/camera/gl/SurfaceTextureRenderer$FrameDrawer;)V

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$902(Lcom/google/android/apps/lightcycle/PanoramaModule;Lcom/android/camera/gl/SurfaceTextureRenderer;)Lcom/android/camera/gl/SurfaceTextureRenderer;

    .line 344
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1700(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->onPreviewStarted()V

    goto :goto_0
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1800(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .prologue
    .line 352
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onSurfaceTextureSizeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0, p2}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1102(Lcom/google/android/apps/lightcycle/PanoramaModule;I)I

    .line 354
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0, p3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1202(Lcom/google/android/apps/lightcycle/PanoramaModule;I)I

    .line 355
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 358
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 369
    return-void
.end method
