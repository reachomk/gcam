.class final Lcom/android/camera/module/video2/Video2Module$5;
.super Lcom/android/camera/ui/PreviewStatusListenerNoSurfaceHolderImpl;
.source "Video2Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/android/camera/ui/PreviewStatusListenerNoSurfaceHolderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 707
    new-instance v0, Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-object v0
.end method

.method public final getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onPreviewFlipped()V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method public final onPreviewLayoutChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR954KIIA9954KIAAM(IIII)V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 726
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 729
    return-void
.end method
