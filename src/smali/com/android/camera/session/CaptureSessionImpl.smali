.class public final Lcom/android/camera/session/CaptureSessionImpl;
.super Ljava/lang/Object;
.source "CaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/session/StackableSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/session/CaptureSessionImpl$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actualCaptureCommand:I

.field private final captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

.field private final captureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

.field private final filesProxy:Lcom/android/camera/storage/FilesProxy;

.field private final finishExecutor:Ljava/util/concurrent/Executor;

.field private location:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSaver:Lcom/android/camera/storage/MediaSaver;

.field private numStackedSessionsFinished:I

.field private placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

.field private final placeholderManager:Lcom/android/camera/session/PlaceholderManager;

.field private progressListener:Lcom/android/camera/session/CaptureSession$ProgressListener;

.field private progressMessage:Lcom/android/camera/ui/UiString;

.field private progressPercent:I

.field private selectedCaptureCommand:I

.field private final sessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final sessionNotifier:Lcom/android/camera/session/SessionNotifier;

.field private final sessionStartMillis:J

.field private sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

.field private final stackSaverFactory:Lcom/android/camera/session/StackSaverFactory;

.field private final stackedMediaUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stackedSessionListener:Lcom/android/camera/session/StackedSessionListener;

.field private final stackedSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/camera/session/StackedCaptureSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile state:Lcom/android/camera/session/CaptureSessionImpl$State;

.field private final tempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

.field private final title:Ljava/lang/String;

.field private uri:Landroid/net/Uri;

.field private userNotifiedCaptureOccurred:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "CaptureSessionImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLcom/google/common/base/Optional;Lcom/android/camera/session/TemporarySessionFile;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/storage/MediaSaver;Lcom/android/camera/session/StackSaverFactory;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/Storage;Lcom/android/camera/storage/FilesProxy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;",
            "Lcom/android/camera/session/TemporarySessionFile;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/android/camera/session/SessionNotifier;",
            "Lcom/android/camera/session/PlaceholderManager;",
            "Lcom/android/camera/storage/MediaSaver;",
            "Lcom/android/camera/session/StackSaverFactory;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/storage/Storage;",
            "Lcom/android/camera/storage/FilesProxy;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->location:Lcom/google/common/base/Optional;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressPercent:I

    .line 110
    invoke-static {}, Lcom/android/camera/ui/PreviewContentNoOp;->absent()Lcom/android/camera/ui/UiString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressMessage:Lcom/android/camera/ui/UiString;

    .line 117
    new-instance v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;

    invoke-direct {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->stackedSessions:Ljava/util/Map;

    .line 130
    iput v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->numStackedSessionsFinished:I

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->stackedMediaUris:Ljava/util/List;

    .line 139
    iput-boolean v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->userNotifiedCaptureOccurred:Z

    .line 141
    iput v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->selectedCaptureCommand:I

    .line 142
    iput v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->actualCaptureCommand:I

    .line 174
    const-string v0, "CaptureSessionImpl(#1)"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->title:Ljava/lang/String;

    .line 176
    iput-wide p2, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionStartMillis:J

    .line 177
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->location:Lcom/google/common/base/Optional;

    .line 178
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/TemporarySessionFile;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->tempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    .line 179
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSessionManager;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 180
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/SessionNotifier;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    .line 181
    invoke-static {p8}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/PlaceholderManager;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    .line 182
    invoke-static {p9}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/MediaSaver;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mediaSaver:Lcom/android/camera/storage/MediaSaver;

    .line 183
    sget-object v0, Lcom/android/camera/session/CaptureSessionImpl$State;->NOT_STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 184
    iput-object p10, p0, Lcom/android/camera/session/CaptureSessionImpl;->stackSaverFactory:Lcom/android/camera/session/StackSaverFactory;

    .line 185
    invoke-static {p11}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->finishExecutor:Ljava/util/concurrent/Executor;

    .line 186
    new-instance v0, Lcom/android/camera/session/CaptureSessionNotifier;

    invoke-direct {v0}, Lcom/android/camera/session/CaptureSessionNotifier;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    .line 187
    invoke-static {p12}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {p13}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FilesProxy;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/session/CaptureSessionImpl;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/session/CaptureSessionImpl;->notifyCapturePersisted()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/session/CaptureSessionImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/session/CaptureSessionImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/session/CaptureSessionImpl;->warnWithId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/StackedSessionListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->stackedSessionListener:Lcom/android/camera/session/StackedSessionListener;

    return-object v0
.end method

.method static synthetic access$1308(Lcom/android/camera/session/CaptureSessionImpl;)I
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->numStackedSessionsFinished:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->numStackedSessionsFinished:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/session/CaptureSessionImpl;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/session/CaptureSessionImpl;->updateStackedProgressMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/session/CaptureSessionImpl;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/session/CaptureSessionImpl;->notifyCaptureFailed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/PlaceholderManager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/session/CaptureSessionImpl;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/session/CaptureSessionImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->stackedMediaUris:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/TemporarySessionFile;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->tempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/storage/FilesProxy;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    return-object v0
.end method

.method private final varargs checkSessionState([Lcom/android/camera/session/CaptureSessionImpl$State;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 847
    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 2858
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p1, v1

    .line 2859
    if-ne v4, v2, :cond_1

    .line 2860
    const/4 v0, 0x1

    .line 847
    :cond_0
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid session state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 848
    return-void

    .line 2858
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final logWithId(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 831
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 832
    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->title:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method private final notifyCaptureFailed()V
    .locals 3

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    iget v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->selectedCaptureCommand:I

    iget v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->actualCaptureCommand:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/CaptureSessionNotifier;->onCaptureFailed(II)V

    .line 890
    return-void
.end method

.method private final notifyCapturePersisted()V
    .locals 3

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    iget v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->selectedCaptureCommand:I

    iget v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->actualCaptureCommand:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/CaptureSessionNotifier;->onCapturePersisted(II)V

    .line 881
    return-void
.end method

.method private final onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    .locals 1

    .prologue
    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->userNotifiedCaptureOccurred:Z

    .line 820
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/session/SessionNotifier;->notifySessionCaptureIndicatorAvailable(Landroid/graphics/Bitmap;I)V

    .line 821
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    invoke-virtual {v0}, Lcom/android/camera/session/CaptureSessionNotifier;->onTinyThumb()V

    .line 822
    return-void
.end method

.method private final onCaptureIndicatorUpdate(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;I)V
    .locals 1

    .prologue
    .line 812
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;->get()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 813
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->bitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 815
    invoke-direct {p0, v0, p2}, Lcom/android/camera/session/CaptureSessionImpl;->onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V

    .line 816
    return-void
.end method

.method private final updateStackedProgressMessage()V
    .locals 4

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    if-eq v0, v1, :cond_0

    .line 800
    const-string v0, "Ignoring updateStackedProgressMessage. CaptureSession is not started."

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->warnWithId(Ljava/lang/String;)V

    .line 809
    :goto_0
    return-void

    .line 803
    :cond_0
    const v0, 0x7f0a01ea

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/session/CaptureSessionImpl;->numStackedSessionsFinished:I

    .line 806
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionImpl;->stackedSessions:Ljava/util/Map;

    .line 807
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 804
    invoke-static {v0, v1}, Lcom/android/camera/ui/PreviewContentNoOp;->from(I[Ljava/lang/Object;)Lcom/android/camera/ui/UiString;

    move-result-object v0

    .line 803
    invoke-virtual {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->setProgressMessage(Lcom/android/camera/ui/UiString;)V

    .line 808
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->numStackedSessionsFinished:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->stackedSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->setProgress(I)V

    goto :goto_0
.end method

.method private final warnWithId(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 836
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 837
    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->title:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-void
.end method


# virtual methods
.method public final addSessionListener(Lcom/android/camera/session/CaptureSession$CaptureSessionListener;)V
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    invoke-virtual {v0, p1}, Lcom/android/camera/session/CaptureSessionNotifier;->addSessionListener(Lcom/android/camera/session/CaptureSession$CaptureSessionListener;)V

    .line 790
    return-void
.end method

.method public final declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->userNotifiedCaptureOccurred:Z

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "cancel() invoked, but userNotifiedCaptureOccurred. Invoking finishWithFailure."

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/android/camera/ui/PreviewContentNoOp;->absent()Lcom/android/camera/ui/UiString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->finishWithFailure(Lcom/android/camera/ui/UiString;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :goto_0
    monitor-exit p0

    return-void

    .line 421
    :cond_0
    :try_start_1
    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/android/camera/session/CaptureSessionImpl$State;->FINISHED_CANCELED:Lcom/android/camera/session/CaptureSessionImpl$State;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 424
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONK6OBGEHQN4PAJCLPN6QBFDOTG____(Landroid/net/Uri;)Lcom/android/camera/session/StackableSession;

    .line 426
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/SessionNotifier;->notifyTaskCanceled(Landroid/net/Uri;)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/PlaceholderManager;->removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 1896
    :cond_2
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    iget v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->selectedCaptureCommand:I

    iget v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->actualCaptureCommand:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/CaptureSessionNotifier;->onCaptureCanceled(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final captureStartCommitted()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    iget v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->selectedCaptureCommand:I

    iget v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->actualCaptureCommand:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/CaptureSessionNotifier;->onCaptureStartCommitted(II)V

    .line 411
    return-void
.end method

.method public final createStackedSession()Lcom/android/camera/session/StackedCaptureSession;
    .locals 4

    .prologue
    .line 718
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/session/CaptureSessionImpl$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->checkSessionState([Lcom/android/camera/session/CaptureSessionImpl$State;)V

    .line 719
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->stackSaverFactory:Lcom/android/camera/session/StackSaverFactory;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->location:Lcom/google/common/base/Optional;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/camera/session/StackSaverFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSEQCD9GNCO9FDHGMSPPFADQ74QBECSTKOORFDKNMERRFCTM6ABR3DTMMQRRE5TH62SR55T7N0T39DTN62R1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQJEHGM6QQJC5R6ASHR(Lcom/android/camera/session/StackableSession;Ljava/lang/String;Lcom/google/common/base/Optional;)Lcom/android/camera/session/StackSaver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/StackSaver;

    .line 720
    new-instance v1, Lcom/android/camera/session/CaptureSessionImpl$6;

    invoke-direct {v1, p0}, Lcom/android/camera/session/CaptureSessionImpl$6;-><init>(Lcom/android/camera/session/CaptureSessionImpl;)V

    .line 721
    invoke-interface {v0, v1}, Lcom/android/camera/session/StackSaver;->createStackedSession(Lcom/android/camera/session/StackedCaptureSession$Listener;)Lcom/android/camera/session/StackedCaptureSession;

    move-result-object v0

    .line 767
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "createStackedSession -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->stackedSessions:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/camera/session/StackedCaptureSession;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->stackedSessionListener:Lcom/android/camera/session/StackedSessionListener;

    .line 773
    invoke-direct {p0}, Lcom/android/camera/session/CaptureSessionImpl;->updateStackedProgressMessage()V

    .line 774
    return-object v0
.end method

.method public final declared-synchronized delete()V
    .locals 2

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    const-string v0, "delete"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 439
    sget-object v0, Lcom/android/camera/session/CaptureSessionImpl$State;->FINISHED_CANCELED:Lcom/android/camera/session/CaptureSessionImpl$State;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 441
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONK6OBGEHQN4PAJCLPN6QBFDOTG____(Landroid/net/Uri;)Lcom/android/camera/session/StackableSession;

    .line 443
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/SessionNotifier;->notifyTaskCanceled(Landroid/net/Uri;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    invoke-virtual {v0}, Lcom/android/camera/session/CaptureSessionNotifier;->onCaptureDeleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final finalizeSession()V
    .locals 2

    .prologue
    .line 711
    const-string v0, "finalizeSession"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/PlaceholderManager;->removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V

    .line 713
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    invoke-virtual {v0}, Lcom/android/camera/session/CaptureSessionNotifier;->onCaptureFinalized()V

    .line 714
    return-void
.end method

.method public final finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 565
    const-string v0, "finish"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 566
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/session/CaptureSessionImpl$State;

    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->checkSessionState([Lcom/android/camera/session/CaptureSessionImpl$State;)V

    .line 568
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finish without calling startSession first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    sget-object v1, Lcom/android/camera/session/CaptureSession$SessionType;->BURST:Lcom/android/camera/session/CaptureSession$SessionType;

    if-ne v0, v1, :cond_1

    .line 575
    const v0, 0x7f0a01eb

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/ui/PreviewContentNoOp;->from(I[Ljava/lang/Object;)Lcom/android/camera/ui/UiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->setProgressMessage(Lcom/android/camera/ui/UiString;)V

    .line 576
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->stackedMediaUris:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Ljava/util/List;)V

    .line 577
    sget-object v0, Lcom/android/camera/session/CaptureSessionImpl$State;->FINISHED_CANCELED:Lcom/android/camera/session/CaptureSessionImpl$State;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 621
    :goto_0
    return-void

    .line 580
    :cond_1
    sget-object v0, Lcom/android/camera/session/CaptureSessionImpl$State;->FINISHING:Lcom/android/camera/session/CaptureSessionImpl$State;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 582
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->finishExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/session/CaptureSessionImpl$4;

    invoke-direct {v1, p0}, Lcom/android/camera/session/CaptureSessionImpl$4;-><init>(Lcom/android/camera/session/CaptureSessionImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final finishWithFailure(Lcom/android/camera/ui/UiString;Z)V
    .locals 3

    .prologue
    .line 687
    const-string v0, "finishWithFailure"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 688
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/session/CaptureSessionImpl$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl$State;->FINISHED_CANCELED:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->checkSessionState([Lcom/android/camera/session/CaptureSessionImpl$State;)V

    .line 690
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 691
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finish without calling startSession first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_0
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressMessage:Lcom/android/camera/ui/UiString;

    .line 694
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/session/CaptureSessionManager;->putErrorMessage(Landroid/net/Uri;Lcom/android/camera/ui/UiString;)V

    .line 695
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskFailed(Landroid/net/Uri;Lcom/android/camera/ui/UiString;Z)V

    .line 696
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/PlaceholderManager;->removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V

    .line 697
    invoke-direct {p0}, Lcom/android/camera/session/CaptureSessionImpl;->notifyCaptureFailed()V

    .line 698
    return-void
.end method

.method public final focus()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/SessionNotifier;->notifyTaskFocused(Landroid/net/Uri;)V

    .line 626
    return-void
.end method

.method public final getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    return-object v0
.end method

.method public final declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressPercent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProgressMessage()Lcom/android/camera/ui/UiString;
    .locals 1

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressMessage:Lcom/android/camera/ui/UiString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSessionType()Lcom/android/camera/session/CaptureSession$SessionType;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    return-object v0
.end method

.method public final getStartTimeMillis()J
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionStartMillis:J

    return-wide v0
.end method

.method public final getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->tempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final declared-synchronized saveAndFinish(Ljava/io/InputStream;Lcom/android/camera/session/MediaInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/camera/session/MediaInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getMimeType()Lcom/android/camera/storage/MimeType;

    move-result-object v3

    .line 455
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getExif()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/exif/ExifInterface;

    .line 456
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getSize()Lcom/android/camera/util/Size;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v7

    .line 458
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    .line 459
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getOrientation()Lcom/google/common/base/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 461
    const-string v1, "saveAndFinish"

    invoke-direct {p0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl$State;->FINISHED_CANCELED:Lcom/android/camera/session/CaptureSessionImpl$State;

    if-ne v1, v2, :cond_0

    .line 463
    const-string v0, "Ignoring saveAndFinish. CaptureSession has been deleted or canceled."

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->warnWithId(Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 560
    :goto_0
    monitor-exit p0

    return-object v0

    .line 467
    :cond_0
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Lcom/android/camera/session/CaptureSessionImpl$State;

    const/4 v2, 0x0

    sget-object v4, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    sget-object v4, Lcom/android/camera/session/CaptureSessionImpl$State;->FINISHING:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v4, v1, v2

    invoke-direct {p0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->checkSessionState([Lcom/android/camera/session/CaptureSessionImpl$State;)V

    .line 468
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->location:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {p2, v1}, Lcom/android/camera/session/MediaInfo;->setLocation(Landroid/location/Location;)Lcom/android/camera/session/MediaInfo;

    .line 470
    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->FINISHED_CANCELED:Lcom/android/camera/session/CaptureSessionImpl$State;

    iput-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 472
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v12

    .line 474
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/util/ApiHelper;->sanitizeExifModelMake(Lcom/android/camera/exif/ExifInterface;)V

    .line 476
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->location:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    if-ne v3, v1, :cond_1

    if-eqz v0, :cond_1

    .line 477
    new-instance v1, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v1, v0}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    .line 478
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->location:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v1, v0}, Lcom/android/camera/util/ExifUtil;->addLocationToExif(Landroid/location/Location;)V

    .line 479
    invoke-virtual {v1}, Lcom/android/camera/util/ExifUtil;->getExif()Lcom/android/camera/exif/ExifInterface;

    move-result-object v0

    .line 2228
    :cond_1
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    .line 483
    invoke-interface {v1, v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeWriteToDisk(Lcom/android/camera/exif/ExifInterface;)V

    .line 488
    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 489
    if-nez v2, :cond_3

    .line 490
    sget-object v1, Lcom/android/camera/storage/MimeType;->GIF:Lcom/android/camera/storage/MimeType;

    if-ne v3, v1, :cond_2

    .line 491
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mediaSaver:Lcom/android/camera/storage/MediaSaver;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionImpl;->title:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionStartMillis:J

    iget-object v6, p0, Lcom/android/camera/session/CaptureSessionImpl;->location:Lcom/google/common/base/Optional;

    new-instance v9, Lcom/android/camera/session/CaptureSessionImpl$1;

    invoke-direct {v9, p0, v12}, Lcom/android/camera/session/CaptureSessionImpl$1;-><init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object v2, p1

    invoke-interface/range {v1 .. v9}, Lcom/android/camera/storage/MediaSaver;->addAnimation(Ljava/io/InputStream;Ljava/lang/String;JLcom/google/common/base/Optional;IILcom/android/camera/storage/MediaSaver$OnMediaSavedListener;)V

    :goto_1
    move-object v0, v12

    .line 560
    goto :goto_0

    .line 513
    :cond_2
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mediaSaver:Lcom/android/camera/storage/MediaSaver;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionImpl;->title:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionStartMillis:J

    iget-object v6, p0, Lcom/android/camera/session/CaptureSessionImpl;->location:Lcom/google/common/base/Optional;

    .line 521
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v10

    new-instance v11, Lcom/android/camera/session/CaptureSessionImpl$2;

    invoke-direct {v11, p0, v12}, Lcom/android/camera/session/CaptureSessionImpl$2;-><init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object v2, p1

    .line 513
    invoke-interface/range {v1 .. v11}, Lcom/android/camera/storage/MediaSaver;->addImage(Ljava/io/InputStream;Ljava/lang/String;JLcom/google/common/base/Optional;IIILcom/google/common/base/Optional;Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 538
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/android/camera/session/CaptureSessionImpl;->finishExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/camera/session/CaptureSessionImpl$3;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionImpl$3;-><init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/android/camera/session/PlaceholderManager$Placeholder;Lcom/android/camera/session/MediaInfo;Ljava/io/InputStream;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final selectCaptureCommand(I)V
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->selectedCaptureCommand:I

    if-nez v0, :cond_0

    .line 869
    iput p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->selectedCaptureCommand:I

    .line 871
    :cond_0
    iput p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->actualCaptureCommand:I

    .line 872
    return-void
.end method

.method public final setLocation(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 243
    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->location:Lcom/google/common/base/Optional;

    .line 244
    return-void
.end method

.method public final declared-synchronized setProgress(I)V
    .locals 3

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    if-eq v0, v1, :cond_1

    .line 255
    const-string v0, "Ignoring setProgress. CaptureSession is not started."

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->warnWithId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 259
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->userNotifiedCaptureOccurred:Z

    if-lez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->userNotifiedCaptureOccurred:Z

    .line 260
    iput p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressPercent:I

    .line 261
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressPercent:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskProgress(Landroid/net/Uri;I)V

    .line 262
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressListener:Lcom/android/camera/session/CaptureSession$ProgressListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressListener:Lcom/android/camera/session/CaptureSession$ProgressListener;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onProgressChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 259
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final setProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressMessage:Lcom/android/camera/ui/UiString;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewContentNoOp;->isAbsent(Lcom/android/camera/ui/UiString;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressMessage:Lcom/android/camera/ui/UiString;

    invoke-interface {p1, v0}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onStatusMessageChanged(Lcom/android/camera/ui/UiString;)V

    .line 705
    :cond_0
    iget v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressPercent:I

    invoke-interface {p1, v0}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onProgressChanged(I)V

    .line 706
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressListener:Lcom/android/camera/session/CaptureSession$ProgressListener;

    .line 707
    return-void
.end method

.method public final declared-synchronized setProgressMessage(Lcom/android/camera/ui/UiString;)V
    .locals 2

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    const-string v0, "setProgressMessage"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    if-eq v0, v1, :cond_1

    .line 277
    const-string v0, "Ignoring setProgressMessage. CaptureSession is not started."

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->warnWithId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 280
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressMessage:Lcom/android/camera/ui/UiString;

    .line 281
    invoke-static {p1}, Lcom/android/camera/ui/PreviewContentNoOp;->isAbsent(Lcom/android/camera/ui/UiString;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressPercent:I

    if-gez v0, :cond_2

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressPercent:I

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/session/SessionNotifier;->notifyTaskProgressText(Landroid/net/Uri;Lcom/android/camera/ui/UiString;)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressListener:Lcom/android/camera/session/CaptureSession$ProgressListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressListener:Lcom/android/camera/session/CaptureSession$ProgressListener;

    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onStatusMessageChanged(Lcom/android/camera/ui/UiString;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startEmpty(Lcom/android/camera/util/Size;Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 4

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    const-string v0, "startEmpty"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 335
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/session/CaptureSessionImpl$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl$State;->NOT_STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->checkSessionState([Lcom/android/camera/session/CaptureSessionImpl$State;)V

    .line 336
    sget-object v0, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 338
    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 339
    invoke-static {}, Lcom/android/camera/ui/PreviewContentNoOp;->absent()Lcom/android/camera/ui/UiString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressMessage:Lcom/android/camera/ui/UiString;

    .line 341
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressPercent:I

    .line 342
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionStartMillis:J

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/camera/session/PlaceholderManager;->insertEmptyPlaceholder(Ljava/lang/String;Lcom/android/camera/util/Size;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 343
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v0, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    .line 344
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7CKLC___(Landroid/net/Uri;Lcom/android/camera/session/StackableSession;)V

    .line 345
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession$SessionType;)V

    .line 346
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    invoke-virtual {v0, p2}, Lcom/android/camera/session/CaptureSessionNotifier;->onCaptureStarted(Lcom/android/camera/session/CaptureSession$SessionType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startSession(Landroid/net/Uri;Lcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 391
    monitor-enter p0

    :try_start_0
    const-string v1, "startSession(Uri)"

    invoke-direct {p0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 392
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/session/CaptureSessionImpl$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/camera/session/CaptureSessionImpl$State;->NOT_STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->checkSessionState([Lcom/android/camera/session/CaptureSessionImpl$State;)V

    .line 393
    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    iput-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 395
    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 396
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    .line 397
    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressMessage:Lcom/android/camera/ui/UiString;

    .line 398
    invoke-static {p2}, Lcom/android/camera/ui/PreviewContentNoOp;->isAbsent(Lcom/android/camera/ui/UiString;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    iput v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressPercent:I

    .line 399
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/session/PlaceholderManager;->convertToPlaceholder(Landroid/net/Uri;)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 401
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7CKLC___(Landroid/net/Uri;Lcom/android/camera/session/StackableSession;)V

    .line 402
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession$SessionType;)V

    .line 403
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    invoke-virtual {v0, p3}, Lcom/android/camera/session/CaptureSessionNotifier;->onCaptureStarted(Lcom/android/camera/session/CaptureSession$SessionType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startSession(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;Lcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 373
    monitor-enter p0

    :try_start_0
    const-string v1, "startSession(DrawableResource)"

    invoke-direct {p0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 374
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/session/CaptureSessionImpl$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/camera/session/CaptureSessionImpl$State;->NOT_STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->checkSessionState([Lcom/android/camera/session/CaptureSessionImpl$State;)V

    .line 375
    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    iput-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 377
    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 378
    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressMessage:Lcom/android/camera/ui/UiString;

    .line 379
    invoke-static {p2}, Lcom/android/camera/ui/PreviewContentNoOp;->isAbsent(Lcom/android/camera/ui/UiString;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    iput v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressPercent:I

    .line 380
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionStartMillis:J

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/camera/session/PlaceholderManager;->insertPlaceholder(Ljava/lang/String;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 381
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v0, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    .line 382
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7CKLC___(Landroid/net/Uri;Lcom/android/camera/session/StackableSession;)V

    .line 383
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession$SessionType;)V

    .line 384
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    invoke-virtual {v0, p3}, Lcom/android/camera/session/CaptureSessionNotifier;->onCaptureStarted(Lcom/android/camera/session/CaptureSession$SessionType;)V

    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/session/CaptureSessionImpl;->onCaptureIndicatorUpdate(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startSession([BLcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 352
    monitor-enter p0

    :try_start_0
    const-string v1, "startSession(byte[])"

    invoke-direct {p0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 353
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/session/CaptureSessionImpl$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/camera/session/CaptureSessionImpl$State;->NOT_STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->checkSessionState([Lcom/android/camera/session/CaptureSessionImpl$State;)V

    .line 354
    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    iput-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    .line 356
    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 357
    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressMessage:Lcom/android/camera/ui/UiString;

    .line 358
    invoke-static {p2}, Lcom/android/camera/ui/PreviewContentNoOp;->isAbsent(Lcom/android/camera/ui/UiString;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    iput v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->progressPercent:I

    .line 359
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionStartMillis:J

    .line 1105
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1106
    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {p1, v5, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1108
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/camera/session/PlaceholderManager;->insertPlaceholder(Ljava/lang/String;Landroid/graphics/Bitmap;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    .line 359
    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 360
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v0, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    .line 361
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7CKLC___(Landroid/net/Uri;Lcom/android/camera/session/StackableSession;)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionType:Lcom/android/camera/session/CaptureSession$SessionType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession$SessionType;)V

    .line 363
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    invoke-virtual {v0, p3}, Lcom/android/camera/session/CaptureSessionNotifier;->onCaptureStarted(Lcom/android/camera/session/CaptureSession$SessionType;)V

    .line 364
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/PlaceholderManager;->getPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->onCaptureIndicatorUpdate(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :cond_1
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 1

    .prologue
    .line 322
    const-string v0, "updateCaptureIndicatorThumbnail"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/android/camera/session/CaptureSessionImpl;->onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V

    .line 324
    return-void
.end method

.method public final updateCaptureIndicatorThumbnail(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;I)V
    .locals 1

    .prologue
    .line 328
    const-string v0, "updateCaptureIndicatorThumbnail"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/session/CaptureSessionImpl;->onCaptureIndicatorUpdate(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;I)V

    .line 330
    return-void
.end method

.method public final updatePreview()V
    .locals 2

    .prologue
    .line 640
    const-string v0, "updatePreview"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    if-eq v0, v1, :cond_0

    .line 643
    const-string v0, "Ignoring updatePreview. CaptureSession is not started."

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->warnWithId(Ljava/lang/String;)V

    .line 678
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->finishExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/session/CaptureSessionImpl$5;

    invoke-direct {v1, p0}, Lcom/android/camera/session/CaptureSessionImpl$5;-><init>(Lcom/android/camera/session/CaptureSessionImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 292
    const-string v0, "updateThumbnail"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    if-eq v0, v1, :cond_1

    .line 295
    :cond_0
    const-string v0, "Ignoring updateThumbnail. CaptureSession is not started or placeholder has already been set."

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->warnWithId(Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->userNotifiedCaptureOccurred:Z

    .line 300
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/session/PlaceholderManager;->replacePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/graphics/Bitmap;)V

    .line 301
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/SessionNotifier;->notifySessionUpdated(Landroid/net/Uri;)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    invoke-virtual {v0}, Lcom/android/camera/session/CaptureSessionNotifier;->onMediumThumb()V

    goto :goto_0
.end method

.method public final updateThumbnail(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;)V
    .locals 2

    .prologue
    .line 307
    const-string v0, "updateThumbnail]"

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->logWithId(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->state:Lcom/android/camera/session/CaptureSessionImpl$State;

    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl$State;->STARTED:Lcom/android/camera/session/CaptureSessionImpl$State;

    if-eq v0, v1, :cond_1

    .line 310
    :cond_0
    const-string v0, "Ignoring updateThumbnail. CaptureSession is not started or placeholder has already been set."

    invoke-direct {p0, v0}, Lcom/android/camera/session/CaptureSessionImpl;->warnWithId(Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void

    .line 314
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->userNotifiedCaptureOccurred:Z

    .line 315
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->placeHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/session/PlaceholderManager;->replacePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;)V

    .line 316
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/SessionNotifier;->notifySessionUpdated(Landroid/net/Uri;)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->captureSessionNotifier:Lcom/android/camera/session/CaptureSessionNotifier;

    invoke-virtual {v0}, Lcom/android/camera/session/CaptureSessionNotifier;->onMediumThumb()V

    goto :goto_0
.end method
