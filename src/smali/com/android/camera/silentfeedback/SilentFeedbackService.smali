.class public final Lcom/android/camera/silentfeedback/SilentFeedbackService;
.super Landroid/app/Service;
.source "SilentFeedbackService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mostRecentId:I

.field private pendingCrashCount:I

.field private final pendingLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "SilentFdbkService"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->pendingLock:Ljava/lang/Object;

    .line 32
    iput v1, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->pendingCrashCount:I

    .line 35
    iput v1, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->mostRecentId:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/silentfeedback/SilentFeedbackService;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->tryToStopSelf()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/silentfeedback/SilentFeedbackService;Landroid/content/Intent;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    .prologue
    .line 25
    invoke-static {p1}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->buildCrashOptions(Landroid/content/Intent;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method private static buildCrashOptions(Landroid/content/Intent;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->TAG:Ljava/lang/String;

    const-string v1, "Building crash options."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;-><init>()V

    .line 44
    if-nez p0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->build()Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setExcludePii(Z)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    .line 50
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.exceptionClass"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.exceptionClass"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setExceptionClassName(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    .line 53
    :cond_1
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.stackTrace"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.stackTrace"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setStackTrace(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    .line 56
    :cond_2
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.throwingClass"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.throwingClass"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setThrowClassName(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    .line 59
    :cond_3
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.throwingFile"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.throwingFile"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setThrowFileName(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    .line 62
    :cond_4
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.throwingLine"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.throwingLine"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setThrowLineNumber(I)Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    .line 65
    :cond_5
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.throwingMethod"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 66
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.throwingMethod"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setThrowMethodName(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    .line 68
    :cond_6
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.categoryTag"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 69
    const-string v1, "com.android.camera.silentfeedback.SilentFeedbackService.categoryTag"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setCategoryTag(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    .line 71
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->build()Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private final checkValidGmsCoreVersion()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 80
    sget-object v1, Lcom/android/camera/silentfeedback/SilentFeedbackService;->TAG:Ljava/lang/String;

    const-string v2, "Checking valid GmsCoreVersion."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    const v2, 0x645b68

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 85
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0
.end method

.method private final tryToStopSelf()V
    .locals 3

    .prologue
    .line 96
    sget-object v0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->TAG:Ljava/lang/String;

    const-string v1, "Trying to stop self."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->pendingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    iget v2, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->pendingCrashCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->pendingCrashCount:I

    if-nez v2, :cond_0

    .line 107
    iget v0, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->mostRecentId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 109
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->stopSelf(I)V

    .line 113
    :cond_1
    return-void

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 117
    iget-object v1, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->pendingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget v0, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->pendingCrashCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->pendingCrashCount:I

    .line 119
    iput p3, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->mostRecentId:I

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    sget-object v0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->TAG:Ljava/lang/String;

    const-string v1, "Starting silent feedback service."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->checkValidGmsCoreVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/android/camera/silentfeedback/SilentFeedbackService;->TAG:Ljava/lang/String;

    const-string v1, "Not sending silent feedback. GMS version too low."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->tryToStopSelf()V

    .line 178
    :goto_0
    return v2

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 133
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    sget-object v1, Lcom/google/android/gms/feedback/Feedback;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/android/camera/silentfeedback/SilentFeedbackService$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/camera/silentfeedback/SilentFeedbackService$1;-><init>(Lcom/android/camera/silentfeedback/SilentFeedbackService;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 164
    new-instance v1, Lcom/android/camera/silentfeedback/SilentFeedbackService$2;

    invoke-direct {v1, p0}, Lcom/android/camera/silentfeedback/SilentFeedbackService$2;-><init>(Lcom/android/camera/silentfeedback/SilentFeedbackService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method
