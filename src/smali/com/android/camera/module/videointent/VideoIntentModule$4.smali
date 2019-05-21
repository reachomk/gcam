.class final Lcom/android/camera/module/videointent/VideoIntentModule$4;
.super Lcom/android/camera/ui/PreviewStatusListenerNoSurfaceHolderImpl;
.source "VideoIntentModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/VideoIntentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/VideoIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/VideoIntentModule;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModule$4;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-direct {p0}, Lcom/android/camera/ui/PreviewStatusListenerNoSurfaceHolderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onPreviewFlipped()V
    .locals 0

    .prologue
    .line 480
    return-void
.end method

.method public final onPreviewLayoutChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR954KIIA9954KIAAM(IIII)V
    .locals 3

    .prologue
    .line 471
    new-instance v0, Lcom/android/camera/util/Size;

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 472
    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule$4;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v1}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$100(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/fsm/StateMachine;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/imageintent/event/EventOnTextureViewLayoutChanged;

    invoke-direct {v2, v0}, Lcom/android/camera/module/imageintent/event/EventOnTextureViewLayoutChanged;-><init>(Lcom/android/camera/util/Size;)V

    invoke-interface {v1, v2}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$4;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$100(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;

    invoke-direct {v1, p1}, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 496
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$4;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$100(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureDestroyed;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureDestroyed;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 501
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$4;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$100(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureUpdated;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureUpdated;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 511
    return-void
.end method
