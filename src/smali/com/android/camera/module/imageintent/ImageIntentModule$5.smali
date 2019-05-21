.class final Lcom/android/camera/module/imageintent/ImageIntentModule$5;
.super Lcom/android/camera/ui/PreviewStatusListenerNoSurfaceHolderImpl;
.source "ImageIntentModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/ImageIntentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/ImageIntentModule;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$5;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-direct {p0}, Lcom/android/camera/ui/PreviewStatusListenerNoSurfaceHolderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onPreviewFlipped()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public final onPreviewLayoutChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR954KIIA9954KIAAM(IIII)V
    .locals 3

    .prologue
    .line 460
    new-instance v0, Lcom/android/camera/util/Size;

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 461
    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$5;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v1}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$200(Lcom/android/camera/module/imageintent/ImageIntentModule;)Lcom/android/camera/fsm/StateMachine;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/imageintent/event/EventOnTextureViewLayoutChanged;

    invoke-direct {v2, v0}, Lcom/android/camera/module/imageintent/event/EventOnTextureViewLayoutChanged;-><init>(Lcom/android/camera/util/Size;)V

    invoke-interface {v1, v2}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 462
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$5;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$200(Lcom/android/camera/module/imageintent/ImageIntentModule;)Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;

    invoke-direct {v1, p1}, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$5;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$200(Lcom/android/camera/module/imageintent/ImageIntentModule;)Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureDestroyed;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureDestroyed;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$5;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$200(Lcom/android/camera/module/imageintent/ImageIntentModule;)Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$5;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v1}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$400(Lcom/android/camera/module/imageintent/ImageIntentModule;)Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureUpdated;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 506
    return-void
.end method
