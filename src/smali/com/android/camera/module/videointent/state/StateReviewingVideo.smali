.class public final Lcom/android/camera/module/videointent/state/StateReviewingVideo;
.super Lcom/android/camera/module/videointent/state/VideoIntentState;
.source "StateReviewingVideo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

.field private videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

.field private videoUri:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "StateReviewVid"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/videointent/state/VideoIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/videointent/state/VideoIntentState;",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;",
            "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/module/videointent/state/VideoIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 42
    iput-object p2, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 43
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->addRef()V

    .line 44
    iput-object p3, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideo2FileSaver()Lcom/android/camera/module/video2/Video2FileSaver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

    .line 1051
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$1;

    invoke-direct {v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo$1;-><init>()V

    .line 1058
    const-class v1, Lcom/android/camera/module/imageintent/event/EventStop;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1061
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo$2;-><init>(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V

    .line 1068
    const-class v1, Lcom/android/camera/module/imageintent/event/EventTapOnCancelIntentButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1071
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo$3;-><init>(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V

    .line 1079
    const-class v1, Lcom/android/camera/module/videointent/event/Events$EventTapOnReviewButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1082
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo$4;-><init>(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V

    .line 1089
    const-class v1, Lcom/android/camera/module/videointent/event/Events$EventTapOnConfirmVideoButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1092
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;-><init>(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V

    .line 1109
    const-class v1, Lcom/android/camera/module/videointent/event/Events$EventTapOnRetakeButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1112
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$6;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo$6;-><init>(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V

    .line 1120
    const-class v1, Lcom/android/camera/module/imageintent/event/EventResume;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1123
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$7;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo$7;-><init>(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V

    .line 1135
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoUri:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->startPlayVideoActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->hideCaptureResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->deleteVideoFile()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/module/videointent/state/StateReviewingVideo;Lcom/google/android/apps/camera/async/RefCountBase;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->showVideoReviewImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method private final deleteVideoFile()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 190
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getUri()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getUri()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0, v2}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->setUri(Landroid/net/Uri;)V

    .line 195
    return-void
.end method

.method private final hideCaptureResult()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->hideReviewControls()V

    .line 185
    return-void
.end method

.method private final showVideoReviewImage()V
    .locals 4

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getVideoResolution()Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->getSize()Landroid/util/Size;

    move-result-object v1

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoUri:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 175
    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->showReviewImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    sget-object v1, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->TAG:Ljava/lang/String;

    const-string v2, "Error showing review image"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final startPlayVideoActivity()V
    .locals 3

    .prologue
    .line 214
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoUri:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getMimeType()Lcom/android/camera/storage/MimeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/storage/MimeType;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->launchActivityByIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    sget-object v1, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t view video"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;

    move-result-object v0

    return-object v0
.end method

.method public final onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;
    .locals 15

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getUri()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoUri:Lcom/google/common/base/Optional;

    .line 145
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoUri:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video2/Video2FileSaver;->saveFile$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIAPKM8PBF8PKMOP9R55666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEO_(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoUri:Lcom/google/common/base/Optional;

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoUri:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->setUri(Landroid/net/Uri;)V

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->showVideoReviewImage()V

    .line 155
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->showReviewControls()V

    .line 1198
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    .line 1201
    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1202
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getCameraFacingSetting()Lcom/android/camera/settings/CameraFacingSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/settings/CameraFacingSetting;->get()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    .line 1203
    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getResolution()Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->getSize()Landroid/util/Size;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    .line 1204
    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getDuration()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    .line 1205
    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getLength()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    .line 1206
    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getCaptureFrameRate()I

    move-result v0

    int-to-float v10, v0

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    .line 1207
    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->isTorchOn()Z

    move-result v11

    .line 1208
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideo2Settings()Lcom/android/camera/module/video2/Video2Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2Settings;->getGridLinesSetting()Z

    move-result v12

    .line 1209
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideo2Settings()Lcom/android/camera/module/video2/Video2Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2Settings;->isVideoStabilizationEnabled()Z

    move-result v13

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->videoFile$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHF8DGMQORFE9I6ASIMD5I6ARQ6D5M6AEO_:Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    .line 1210
    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getCameraFrameDropCount()I

    move-result v14

    .line 1199
    invoke-virtual/range {v1 .. v14}, Lcom/android/camera/stats/UsageStatistics;->videoCaptureDoneEvent(ZLjava/lang/String;Lcom/android/camera/one/OneCamera$Facing;Landroid/util/Size;JJFZZZI)V

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLeave()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->unlockOrientation()V

    .line 166
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 167
    return-void
.end method
