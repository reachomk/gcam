.class final Lcom/android/camera/gl/SurfaceTextureRenderer$1;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/gl/SurfaceTextureRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/gl/SurfaceTextureRenderer;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$000(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$100(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$200(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$400(Lcom/android/camera/gl/SurfaceTextureRenderer;)Lcom/android/camera/gl/SurfaceTextureRenderer$FrameDrawer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$300(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/camera/gl/SurfaceTextureRenderer$FrameDrawer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$500(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$100(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$200(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 45
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$602(Lcom/android/camera/gl/SurfaceTextureRenderer;Z)Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$000(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 48
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
