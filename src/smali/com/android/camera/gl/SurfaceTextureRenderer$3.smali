.class final Lcom/android/camera/gl/SurfaceTextureRenderer$3;
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

.field private synthetic val$target:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/android/camera/gl/SurfaceTextureRenderer;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    iput-object p2, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->val$target:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v1, v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$502(Lcom/android/camera/gl/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;

    .line 103
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    iget-object v1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v1}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$500(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$102(Lcom/android/camera/gl/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 104
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$100(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 108
    iget-object v1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v1}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$500(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$100(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    invoke-static {}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$800()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x24

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "EGL version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 114
    iget-object v1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$500(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$100(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$1000(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$902(Lcom/android/camera/gl/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 115
    iget-object v1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    .line 116
    invoke-static {v2}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$500(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$100(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v4}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$900(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v4

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 115
    invoke-static {v1, v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$702(Lcom/android/camera/gl/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 118
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$700(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$700(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to createContext"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    iget-object v1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v1}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$500(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$100(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$900(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->val$target:Landroid/graphics/SurfaceTexture;

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$202(Lcom/android/camera/gl/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 122
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$200(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$200(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_5

    .line 123
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to createWindowSurface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$500(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v1}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$100(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$200(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$200(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v4}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$700(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to eglMakeCurrent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_6
    iget-object v1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/gl/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$700(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {v1, v0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->access$302(Lcom/android/camera/gl/SurfaceTextureRenderer;Ljavax/microedition/khronos/opengles/GL10;)Ljavax/microedition/khronos/opengles/GL10;

    .line 131
    return-void

    .line 113
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method
