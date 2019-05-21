.class public final Lcom/android/camera/module/imageintent/state/StateReviewingPicture;
.super Lcom/android/camera/module/imageintent/state/ImageIntentState;
.source "StateReviewingPicture.java"


# instance fields
.field private final captureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private isReviewingThumbnail:Z

.field private pictureBitmap:Landroid/graphics/Bitmap;

.field private pictureData:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<[B>;"
        }
    .end annotation
.end field

.field private final resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;",
            ">;"
        }
    .end annotation
.end field

.field private shouldFinishWhenReceivePictureData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "StateReviewPic"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Landroid/graphics/Bitmap;Lcom/google/common/base/Optional;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/imageintent/state/ImageIntentState;",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Lcom/google/common/base/Optional",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/module/imageintent/state/ImageIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 227
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$10;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$10;-><init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->captureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 52
    iput-object p2, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 53
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->addRef()V

    .line 54
    iput-object p3, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->pictureBitmap:Landroid/graphics/Bitmap;

    .line 55
    iput-object p4, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->pictureData:Lcom/google/common/base/Optional;

    .line 56
    invoke-virtual {p4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->isReviewingThumbnail:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->shouldFinishWhenReceivePictureData:Z

    .line 1063
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$1;

    invoke-direct {v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$1;-><init>()V

    .line 1070
    const-class v1, Lcom/android/camera/module/imageintent/event/EventStop;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1073
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$2;-><init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V

    .line 1080
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureDestroyed;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1083
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$3;-><init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V

    .line 1095
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnTextureViewLayoutChanged;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1098
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$4;-><init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V

    .line 1105
    const-class v1, Lcom/android/camera/module/imageintent/event/EventTapOnCancelIntentButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1108
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$5;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$5;-><init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V

    .line 1123
    const-class v1, Lcom/android/camera/module/imageintent/event/EventTapOnConfirmPhotoButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1126
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;-><init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V

    .line 1144
    const-class v1, Lcom/android/camera/module/imageintent/event/EventTapOnRetakePhotoButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1147
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$7;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$7;-><init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V

    .line 1180
    const-class v1, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1183
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$8;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$8;-><init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V

    .line 1192
    const-class v1, Lcom/android/camera/module/imageintent/event/EventPictureDecoded;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 59
    return-void

    :cond_0
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->pictureData:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->pictureData:Lcom/google/common/base/Optional;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->shouldFinishWhenReceivePictureData:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;Z)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->shouldFinishWhenReceivePictureData:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->isReviewingThumbnail:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->showPicture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->pictureBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method private final showPicture(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->pictureBitmap:Landroid/graphics/Bitmap;

    .line 216
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 217
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$9;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$9;-><init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V

    .line 218
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method


# virtual methods
.method public final bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;

    move-result-object v0

    return-object v0
.end method

.method public final onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 198
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    .line 199
    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->captureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 200
    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->addSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->pictureBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->showPicture(Landroid/graphics/Bitmap;)V

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLeave()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 208
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->resourceCaptureTools:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 209
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    .line 210
    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->captureSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 211
    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 212
    return-void
.end method
