.class public Lcom/android/camera/stats/UsageStatistics;
.super Ljava/lang/Object;
.source "UsageStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/stats/UsageStatistics$ViewRecord;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ABORT_DURATION_LIMIT_NS:J

.field private static final DEBUG_LOGGING:Z = false

.field public static final NONE:I = -0x1

.field private static final PLAY_LOGS_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String;

.field public static final VIEW_TIMEOUT_MILLIS:J = 0x7530L

.field private static sInstance:Lcom/android/camera/stats/UsageStatistics;


# instance fields
.field private authorStats:Lcom/android/camera/stats/AuthorStatsHelper;

.field private final backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private buildDisplay:Ljava/lang/String;

.field private buildSource:Lcom/android/camera/util/app/AppProperties$BuildSource;

.field private final burstCaptureReportAccumulator:Lcom/android/camera/stats/BurstCaptureReportAccumulator;

.field private changeCamMethod:I

.field private clearcutLogger:Lcom/android/camera/stats/clearcut/GcaClearcutLogger;

.field private final clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

.field private volatile counter:I

.field private currentMode:I

.field private dirtyLensEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final filenameHasher:Lcom/android/camera/stats/FilenameHasher;

.field private final firstRunDetector:Lcom/android/camera/settings/FirstRunDetector;

.field private isTestDevice:Z

.field private lastCaptureTimeMs:J

.field private lastChangeCameraEndTimestampNs:J

.field private runId:I

.field private sessionId:J

.field private shutterButtonReadyState:Z

.field private shutterButtonReadyStateChangedTime:J

.field private timeZone:Ljava/lang/String;

.field private viewRecords:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/stats/UsageStatistics$ViewRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "UsageStats"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/stats/UsageStatistics;->TAG:Ljava/lang/String;

    .line 133
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->secondsToNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/stats/UsageStatistics;->ABORT_DURATION_LIMIT_NS:J

    return-void
.end method

.method constructor <init>(Lcom/android/camera/settings/FirstRunDetector;Lcom/android/camera/stats/FilenameHasher;Lcom/google/android/apps/camera/util/time/NanosecondClock;ILjava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v2, p0, Lcom/android/camera/stats/UsageStatistics;->counter:I

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->dirtyLensEvents:Ljava/util/LinkedList;

    .line 95
    iput-wide v4, p0, Lcom/android/camera/stats/UsageStatistics;->lastCaptureTimeMs:J

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/stats/UsageStatistics;->shutterButtonReadyState:Z

    .line 100
    iput-wide v4, p0, Lcom/android/camera/stats/UsageStatistics;->shutterButtonReadyStateChangedTime:J

    .line 110
    iput v2, p0, Lcom/android/camera/stats/UsageStatistics;->currentMode:I

    .line 114
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->viewRecords:Ljava/util/LinkedHashMap;

    .line 118
    new-instance v0, Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    new-instance v1, Lcom/android/camera/stats/UsageStatistics$1;

    invoke-direct {v1, p0}, Lcom/android/camera/stats/UsageStatistics$1;-><init>(Lcom/android/camera/stats/UsageStatistics;)V

    invoke-direct {v0, v1}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;-><init>(Lcom/android/camera/stats/BurstCaptureReportAccumulator$SmartBurstReportListener;)V

    iput-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->burstCaptureReportAccumulator:Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    .line 132
    iput v2, p0, Lcom/android/camera/stats/UsageStatistics;->changeCamMethod:I

    .line 136
    iput-boolean v2, p0, Lcom/android/camera/stats/UsageStatistics;->isTestDevice:Z

    .line 165
    iput-object p1, p0, Lcom/android/camera/stats/UsageStatistics;->firstRunDetector:Lcom/android/camera/settings/FirstRunDetector;

    .line 166
    iput-object p2, p0, Lcom/android/camera/stats/UsageStatistics;->filenameHasher:Lcom/android/camera/stats/FilenameHasher;

    .line 167
    iput-object p3, p0, Lcom/android/camera/stats/UsageStatistics;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    .line 168
    iput p4, p0, Lcom/android/camera/stats/UsageStatistics;->runId:I

    .line 169
    iput-object p5, p0, Lcom/android/camera/stats/UsageStatistics;->timeZone:Ljava/lang/String;

    .line 170
    iput-object p6, p0, Lcom/android/camera/stats/UsageStatistics;->buildDisplay:Ljava/lang/String;

    .line 171
    iput-object p7, p0, Lcom/android/camera/stats/UsageStatistics;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/stats/UsageStatistics;)Lcom/android/camera/stats/AuthorStatsHelper;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->authorStats:Lcom/android/camera/stats/AuthorStatsHelper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/stats/UsageStatistics;Lcom/android/camera/stats/AuthorStatsHelper;)Lcom/android/camera/stats/AuthorStatsHelper;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/stats/UsageStatistics;->authorStats:Lcom/android/camera/stats/AuthorStatsHelper;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/camera/stats/UsageStatistics;Lcom/android/camera/stats/clearcut/GcaClearcutLogger;)Lcom/android/camera/stats/clearcut/GcaClearcutLogger;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/stats/UsageStatistics;->clearcutLogger:Lcom/android/camera/stats/clearcut/GcaClearcutLogger;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/stats/UsageStatistics;Landroid/content/Context;)Lcom/android/camera/stats/clearcut/GcaClearcutLogger;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/camera/stats/UsageStatistics;->createLogger(Landroid/content/Context;)Lcom/android/camera/stats/clearcut/GcaClearcutLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/stats/UsageStatistics;Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/camera/stats/UsageStatistics;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildCaptureTrace(II)Lcom/google/common/logging/nano/eventprotos$CaptureTrace;
    .locals 1

    .prologue
    .line 1328
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;-><init>()V

    .line 1329
    iput p1, v0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->selected:I

    .line 1330
    iput p2, v0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->actual:I

    .line 1331
    return-object v0
.end method

.method private cameraConfigToStringTag(Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1076
    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    if-nez v0, :cond_0

    .line 1077
    const-string v0, "-UNKNOWN"

    .line 1094
    :goto_0
    return-object v0

    .line 1078
    :cond_0
    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1079
    const-string v0, "-API1_JPEG"

    goto :goto_0

    .line 1080
    :cond_1
    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 1081
    const-string v0, "-API2BETA_HDR_PLUS"

    goto :goto_0

    .line 1082
    :cond_2
    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1083
    const-string v0, "-API2_LEGACY"

    goto :goto_0

    .line 1084
    :cond_3
    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1085
    const-string v0, "-API2_LIMITED"

    goto :goto_0

    .line 1086
    :cond_4
    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    .line 1087
    const-string v0, "-API2_ZSL"

    goto :goto_0

    .line 1088
    :cond_5
    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 1089
    const-string v0, "-API2_HDR_PLUS"

    goto :goto_0

    .line 1090
    :cond_6
    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_7

    .line 1091
    const-string v0, "-API2_AUTO_HDR_PLUS"

    goto :goto_0

    .line 1094
    :cond_7
    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "-UNKNOWN-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private cameraFailure(ILjava/lang/String;III)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 837
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 838
    const/4 v1, 0x7

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 839
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CameraFailure;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    .line 840
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    iput p1, v1, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->reason:I

    .line 841
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    iput p5, v1, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->hdrPlusShotsInFlight:I

    .line 842
    if-eqz p2, :cond_0

    .line 843
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    iput-object p2, v1, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->info:Ljava/lang/String;

    .line 845
    :cond_0
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    iget-object v2, p0, Lcom/android/camera/stats/UsageStatistics;->buildDisplay:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->osBuildDisplay:Ljava/lang/String;

    .line 846
    if-eq p3, v3, :cond_1

    .line 847
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    iput p3, v1, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cameraAgentAction:I

    .line 849
    :cond_1
    if-eq p4, v3, :cond_2

    .line 850
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    iput p4, v1, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cameraAgentState:I

    .line 853
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 854
    return-void
.end method

.method private controlUsed(ILcom/google/common/logging/nano/eventprotos$TapToFocusMeta;)V
    .locals 3

    .prologue
    .line 1098
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 1099
    const/16 v1, 0xc

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 1100
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$ControlEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$ControlEvent;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->controlEvent:Lcom/google/common/logging/nano/eventprotos$ControlEvent;

    .line 1101
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->controlEvent:Lcom/google/common/logging/nano/eventprotos$ControlEvent;

    iput p1, v1, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->control:I

    .line 1102
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->controlEvent:Lcom/google/common/logging/nano/eventprotos$ControlEvent;

    iget v2, p0, Lcom/android/camera/stats/UsageStatistics;->currentMode:I

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->mode:I

    .line 1104
    if-eqz p2, :cond_0

    .line 1105
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->controlEvent:Lcom/google/common/logging/nano/eventprotos$ControlEvent;

    iput-object p2, v1, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->ttfMeta:Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;

    .line 1107
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 1108
    return-void
.end method

.method private static createInstance()Lcom/android/camera/stats/UsageStatistics;
    .locals 9

    .prologue
    .line 146
    new-instance v0, Lcom/android/camera/stats/UsageStatistics;

    .line 147
    invoke-static {}, Lcom/android/camera/settings/FirstRunDetector;->instance()Lcom/android/camera/settings/FirstRunDetector;

    move-result-object v1

    .line 148
    invoke-static {}, Lcom/android/camera/stats/FilenameHasher;->getInstance()Lcom/android/camera/stats/FilenameHasher;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-direct {v3}, Lcom/google/android/apps/camera/util/time/NanosecondClock;-><init>()V

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 150
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 151
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v7, "UsageStatEx"

    const/16 v8, 0xa

    .line 153
    invoke-static {v7, v8}, Lcom/google/android/apps/camera/async/Futures2;->newSingleThreadedScheduledExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/stats/UsageStatistics;-><init>(Lcom/android/camera/settings/FirstRunDetector;Lcom/android/camera/stats/FilenameHasher;Lcom/google/android/apps/camera/util/time/NanosecondClock;ILjava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 146
    return-object v0
.end method

.method private createLogger(Landroid/content/Context;)Lcom/android/camera/stats/clearcut/GcaClearcutLogger;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1340
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 1342
    if-eqz v2, :cond_0

    .line 1343
    sget-object v0, Lcom/android/camera/stats/UsageStatistics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Play Services not active for logging, result was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1387
    :goto_0
    return-object v0

    .line 1347
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1348
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1350
    sget-object v5, Lcom/android/camera/stats/UsageStatistics;->TAG:Ljava/lang/String;

    const-string v6, "Checking signing for package: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v5, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    invoke-static {v3, v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isPackageGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1352
    sget-object v0, Lcom/android/camera/stats/UsageStatistics;->TAG:Ljava/lang/String;

    const-string v2, "APK is not signed properly for logging"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1353
    goto :goto_0

    .line 1350
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1356
    :cond_2
    sget-object v3, Lcom/android/camera/stats/UsageStatistics;->TAG:Ljava/lang/String;

    const-string v4, "GooglePlayServicesAvailable = "

    .line 1358
    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1356
    :goto_2
    invoke-static {v3, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/clearcut/ClearcutLogger;->API:Lcom/google/android/gms/common/api/Api;

    .line 1363
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 1364
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 1365
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 1367
    new-instance v0, Lcom/android/camera/stats/UsageStatistics$6;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/stats/UsageStatistics$6;-><init>(Lcom/android/camera/stats/UsageStatistics;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 1387
    new-instance v0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    iget-object v2, p0, Lcom/android/camera/stats/UsageStatistics;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1388
    invoke-static {}, Lcom/android/camera/debug/DebugModule;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/camera/debug/Logger$Factory;)V

    goto :goto_0

    .line 1358
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static instance()Lcom/android/camera/stats/UsageStatistics;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/camera/stats/UsageStatistics;->sInstance:Lcom/android/camera/stats/UsageStatistics;

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->createInstance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    sput-object v0, Lcom/android/camera/stats/UsageStatistics;->sInstance:Lcom/android/camera/stats/UsageStatistics;

    .line 142
    :cond_0
    sget-object v0, Lcom/android/camera/stats/UsageStatistics;->sInstance:Lcom/android/camera/stats/UsageStatistics;

    return-object v0
.end method

.method private playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1286
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->clearcutLogger:Lcom/android/camera/stats/clearcut/GcaClearcutLogger;

    if-nez v0, :cond_0

    .line 1317
    :goto_0
    return-void

    .line 1292
    :cond_0
    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 1295
    :cond_1
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->timeZone:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->timezone:Ljava/lang/String;

    .line 1296
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->firstRunDetector:Lcom/android/camera/settings/FirstRunDetector;

    invoke-virtual {v0}, Lcom/android/camera/settings/FirstRunDetector;->getTimeOfFirstRun()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->clientFirstUseMillis:J

    .line 1298
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/stats/UsageStatistics;->getIsTestDevice()Z

    move-result v0

    iput-boolean v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->isTestDevice:Z

    .line 1299
    iget v0, p0, Lcom/android/camera/stats/UsageStatistics;->runId:I

    iput v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->runId:I

    .line 1300
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->buildSource:Lcom/android/camera/util/app/AppProperties$BuildSource;

    invoke-virtual {v0}, Lcom/android/camera/util/app/AppProperties$BuildSource;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1312
    const/4 v0, 0x0

    iput v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->buildSource:I

    .line 1314
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/stats/UsageStatistics;->getCurrSessionID()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->sessionId:J

    .line 1315
    iget v0, p0, Lcom/android/camera/stats/UsageStatistics;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/stats/UsageStatistics;->counter:I

    iput v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->counter:I

    .line 1316
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->clearcutLogger:Lcom/android/camera/stats/clearcut/GcaClearcutLogger;

    invoke-interface {v0, p1}, Lcom/android/camera/stats/clearcut/GcaClearcutLogger;->sendToClearcut(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    goto :goto_0

    .line 1302
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->buildSource:I

    goto :goto_1

    .line 1305
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->buildSource:I

    goto :goto_1

    .line 1308
    :pswitch_2
    iput v2, p1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->buildSource:I

    goto :goto_1

    .line 1300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sessionTypeToCaptureMode(Lcom/android/camera/session/CaptureSession$SessionType;)I
    .locals 1

    .prologue
    .line 1063
    sget-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->HDR_PLUS:Lcom/android/camera/session/CaptureSession$SessionType;

    if-ne p1, v0, :cond_0

    .line 1064
    const/16 v0, 0xd

    .line 1072
    :goto_0
    return v0

    .line 1065
    :cond_0
    sget-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->NORMAL:Lcom/android/camera/session/CaptureSession$SessionType;

    if-ne p1, v0, :cond_1

    .line 1066
    const/16 v0, 0xc

    goto :goto_0

    .line 1067
    :cond_1
    sget-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->HDR_PLUS_AUTO:Lcom/android/camera/session/CaptureSession$SessionType;

    if-ne p1, v0, :cond_2

    .line 1069
    const/16 v0, 0xb

    goto :goto_0

    .line 1072
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public backgrounded(I[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;Lcom/google/common/logging/nano/eventprotos$LaunchReport;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 415
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v2

    .line 418
    invoke-virtual {p0}, Lcom/android/camera/stats/UsageStatistics;->flushMediaViewRecords()V

    .line 419
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 420
    const/16 v0, 0xe

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 422
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 424
    new-instance v4, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;

    invoke-direct {v4}, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;-><init>()V

    .line 427
    iput-object p2, v4, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->previewSmoothnessReport:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    .line 430
    iput-object p3, v4, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->launchReport:Lcom/google/common/logging/nano/eventprotos$LaunchReport;

    .line 433
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->dirtyLensEvents:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/android/camera/stats/UsageStatistics;->dirtyLensEvents:Ljava/util/LinkedList;

    .line 434
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    .line 435
    iget-object v5, p0, Lcom/android/camera/stats/UsageStatistics;->dirtyLensEvents:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 436
    iput-object v0, v4, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->dirtyLensEvents:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    .line 440
    if-ne p1, v8, :cond_0

    .line 442
    iget-boolean v0, p0, Lcom/android/camera/stats/UsageStatistics;->shutterButtonReadyState:Z

    if-nez v0, :cond_2

    .line 443
    iget-wide v6, p0, Lcom/android/camera/stats/UsageStatistics;->shutterButtonReadyStateChangedTime:J

    sub-long/2addr v2, v6

    long-to-float v0, v2

    .line 444
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->nanosToSeconds(F)F

    move-result v0

    iput v0, v4, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->shutterButtonDisabledDuration:F

    .line 451
    :cond_0
    :goto_0
    iput-boolean v8, p0, Lcom/android/camera/stats/UsageStatistics;->shutterButtonReadyState:Z

    .line 452
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/stats/UsageStatistics;->shutterButtonReadyStateChangedTime:J

    .line 454
    iput-object v4, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->backgroundEvent:Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;

    .line 457
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 458
    return-void

    .line 447
    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v4, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->shutterButtonDisabledDuration:F

    goto :goto_0
.end method

.method public blockShotEvent(JJ)V
    .locals 3

    .prologue
    .line 1271
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 1272
    const/16 v1, 0x18

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 1273
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->blockShotEvent:Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;

    .line 1274
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->blockShotEvent:Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;

    iput-wide p1, v1, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->startNs:J

    .line 1275
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->blockShotEvent:Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;

    iput-wide p3, v1, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->endNs:J

    .line 1276
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->blockShotEvent:Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;

    iget v2, p0, Lcom/android/camera/stats/UsageStatistics;->currentMode:I

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->mode:I

    .line 1277
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 1278
    return-void
.end method

.method public cameraFailure(ILjava/lang/String;II)V
    .locals 6

    .prologue
    .line 820
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;III)V

    .line 821
    return-void
.end method

.method public captureComputeEvent(ILcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;)V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/UsageStatistics;->lastCaptureTimeMs:J

    .line 478
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 479
    const/16 v1, 0xd

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 481
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureComputeEvent:Lcom/google/common/logging/nano/eventprotos$CaptureCompute;

    .line 482
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureComputeEvent:Lcom/google/common/logging/nano/eventprotos$CaptureCompute;

    iput p1, v1, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->mode:I

    .line 485
    if-eqz p3, :cond_0

    .line 486
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureComputeEvent:Lcom/google/common/logging/nano/eventprotos$CaptureCompute;

    iput-object p3, v1, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->lensblurReport:Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;

    .line 488
    :cond_0
    if-eqz p2, :cond_1

    .line 489
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureComputeEvent:Lcom/google/common/logging/nano/eventprotos$CaptureCompute;

    iput-object p2, v1, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->photosphereReport:Lcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;

    .line 491
    :cond_1
    if-eqz p4, :cond_2

    .line 492
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureComputeEvent:Lcom/google/common/logging/nano/eventprotos$CaptureCompute;

    iput-object p4, v1, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->smartburstReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    .line 494
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 495
    return-void
.end method

.method public changeCameraEvent(IIJJ)V
    .locals 9

    .prologue
    .line 1242
    new-instance v2, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v2}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 1243
    const/16 v0, 0x17

    iput v0, v2, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 1244
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;-><init>()V

    iput-object v0, v2, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    .line 1245
    iget-object v0, v2, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    iput p1, v0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->source:I

    .line 1246
    iget-object v0, v2, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    iput p2, v0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->target:I

    .line 1247
    iget-object v0, v2, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    iput-wide p3, v0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeCameraStartNanoTime:J

    .line 1248
    iget-object v0, v2, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    iput-wide p5, v0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeCameraEndNanoTime:J

    .line 1249
    iget-object v0, v2, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    iget v1, p0, Lcom/android/camera/stats/UsageStatistics;->changeCamMethod:I

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeMethod:I

    .line 1252
    iget-wide v0, p0, Lcom/android/camera/stats/UsageStatistics;->lastCaptureTimeMs:J

    iget-wide v4, p0, Lcom/android/camera/stats/UsageStatistics;->lastChangeCameraEndTimestampNs:J

    .line 1253
    invoke-static {v4, v5}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->nanosToMillis(J)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 1254
    :goto_0
    iget-wide v4, p0, Lcom/android/camera/stats/UsageStatistics;->lastChangeCameraEndTimestampNs:J

    sub-long v4, p3, v4

    sget-wide v6, Lcom/android/camera/stats/UsageStatistics;->ABORT_DURATION_LIMIT_NS:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    const/4 v1, 0x1

    .line 1256
    :goto_1
    iget-object v3, v2, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v3, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->isAbort:Z

    .line 1258
    invoke-direct {p0, v2}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 1261
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/stats/UsageStatistics;->changeCamMethod:I

    .line 1262
    iput-wide p5, p0, Lcom/android/camera/stats/UsageStatistics;->lastChangeCameraEndTimestampNs:J

    .line 1263
    return-void

    .line 1253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1254
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1256
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public changeScreen(II)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 1146
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v6, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(IIJJ)V

    .line 1147
    return-void
.end method

.method public changeScreen(IIJJ)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 1163
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 1164
    iput v4, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 1165
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$NavigationChange;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    .line 1166
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    iput p1, v1, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->currentMode:I

    .line 1167
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    iput p2, v1, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->cause:I

    .line 1168
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    iget v2, p0, Lcom/android/camera/stats/UsageStatistics;->currentMode:I

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->previousMode:I

    .line 1169
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    iput-wide p3, v1, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->modeChangeBeginNanoTime:J

    .line 1170
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    iput-wide p5, v1, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->modeChangeEndNanoTime:J

    .line 1172
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-wide v2, p0, Lcom/android/camera/stats/UsageStatistics;->lastCaptureTimeMs:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    .line 1173
    iget v1, p0, Lcom/android/camera/stats/UsageStatistics;->currentMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/stats/UsageStatistics;->currentMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/stats/UsageStatistics;->currentMode:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/camera/stats/UsageStatistics;->currentMode:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/stats/UsageStatistics;->currentMode:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/stats/UsageStatistics;->currentMode:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1179
    :cond_0
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    iget-object v2, p0, Lcom/android/camera/stats/UsageStatistics;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    .line 1180
    invoke-virtual {v2}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeMs()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/stats/UsageStatistics;->lastCaptureTimeMs:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->millisToSecondsFloat(J)F

    move-result v2

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->timeFromCaptureToFilmstrip:F

    .line 1183
    :cond_1
    iput-wide v6, p0, Lcom/android/camera/stats/UsageStatistics;->lastCaptureTimeMs:J

    .line 1185
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    iget v1, v1, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->previousMode:I

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    iget v1, v1, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->previousMode:I

    iget-object v2, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    iget v2, v2, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->currentMode:I

    if-eq v1, v2, :cond_2

    .line 1187
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 1189
    :cond_2
    iput p1, p0, Lcom/android/camera/stats/UsageStatistics;->currentMode:I

    .line 1190
    return-void
.end method

.method public controlUsed(I)V
    .locals 1

    .prologue
    .line 1114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/stats/UsageStatistics;->controlUsed(ILcom/google/common/logging/nano/eventprotos$TapToFocusMeta;)V

    .line 1115
    return-void
.end method

.method public flushMediaViewRecords()V
    .locals 10

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeMs()J

    move-result-wide v2

    .line 283
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->viewRecords:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 285
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    iget-object v1, p0, Lcom/android/camera/stats/UsageStatistics;->viewRecords:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/stats/UsageStatistics$ViewRecord;

    .line 288
    iget-wide v6, v1, Lcom/android/camera/stats/UsageStatistics$ViewRecord;->modifiedTimeMillis:J

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 290
    iget-wide v6, v1, Lcom/android/camera/stats/UsageStatistics$ViewRecord;->zoomTimeMillis:J

    iget-wide v8, v1, Lcom/android/camera/stats/UsageStatistics$ViewRecord;->modifiedTimeMillis:J

    sub-long/2addr v6, v8

    long-to-float v5, v6

    const v6, 0x3a83126f    # 0.001f

    mul-float/2addr v5, v6

    .line 291
    new-instance v6, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v6}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 292
    const/4 v7, 0x5

    iput v7, v6, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 293
    new-instance v7, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    invoke-direct {v7}, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;-><init>()V

    iput-object v7, v6, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    .line 294
    iget-object v7, v6, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    const/4 v8, 0x6

    iput v8, v7, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->interactionType:I

    .line 295
    iget-object v7, v6, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    iget-object v8, p0, Lcom/android/camera/stats/UsageStatistics;->filenameHasher:Lcom/android/camera/stats/FilenameHasher;

    invoke-virtual {v8, v0}, Lcom/android/camera/stats/FilenameHasher;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->fileNameHash:Ljava/lang/String;

    .line 296
    iget-object v0, v6, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    iget v1, v1, Lcom/android/camera/stats/UsageStatistics$ViewRecord;->zoom:F

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->viewZoomLevel:F

    .line 297
    iget-object v0, v6, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    iput v5, v0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->age:F

    .line 298
    invoke-direct {p0, v6}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 299
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 302
    :cond_1
    return-void
.end method

.method public foregrounded(IIIZZZJ)V
    .locals 3

    .prologue
    .line 348
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 349
    const/4 v1, 0x6

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 350
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    .line 351
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    iput p1, v1, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->source:I

    .line 352
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    iput p3, v1, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->mode:I

    .line 353
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    iget-object v2, p0, Lcom/android/camera/stats/UsageStatistics;->buildDisplay:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->osBuildDisplay:Ljava/lang/String;

    .line 354
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    iget-object v2, p0, Lcom/android/camera/stats/UsageStatistics;->firstRunDetector:Lcom/android/camera/settings/FirstRunDetector;

    invoke-virtual {v2}, Lcom/android/camera/settings/FirstRunDetector;->isFirstRun()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->firstRun:Z

    .line 355
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    iput-boolean p4, v1, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isKeyguardLocked:Z

    .line 356
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    iput-boolean p5, v1, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isKeyguardSecure:Z

    .line 357
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    iput-boolean p6, v1, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->startupOnCreate:Z

    .line 358
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    iput-wide p7, v1, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->controlNanoTime:J

    .line 359
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    iput p2, v1, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->launchMethod:I

    .line 360
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->firstRunDetector:Lcom/android/camera/settings/FirstRunDetector;

    invoke-virtual {v0}, Lcom/android/camera/settings/FirstRunDetector;->clear()V

    .line 365
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/camera/stats/UsageStatistics$4;

    invoke-direct {v1, p0}, Lcom/android/camera/stats/UsageStatistics$4;-><init>(Lcom/android/camera/stats/UsageStatistics;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public getBuildSource()Lcom/android/camera/util/app/AppProperties$BuildSource;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->buildSource:Lcom/android/camera/util/app/AppProperties$BuildSource;

    return-object v0
.end method

.method public getBurstCaptureReportAccumulator()Lcom/android/camera/stats/BurstCaptureReportAccumulator;
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->burstCaptureReportAccumulator:Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    return-object v0
.end method

.method public getChangeCamMethod()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/android/camera/stats/UsageStatistics;->changeCamMethod:I

    return v0
.end method

.method public getCurrSessionID()J
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/android/camera/stats/UsageStatistics;->sessionId:J

    return-wide v0
.end method

.method public getIsTestDevice()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/camera/stats/UsageStatistics;->isTestDevice:Z

    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/camera/stats/UsageStatistics$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/stats/UsageStatistics$2;-><init>(Lcom/android/camera/stats/UsageStatistics;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public initializeForTest(Lcom/android/camera/stats/clearcut/GcaClearcutLogger;Lcom/android/camera/stats/AuthorStatsHelper;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/camera/stats/UsageStatistics;->clearcutLogger:Lcom/android/camera/stats/clearcut/GcaClearcutLogger;

    .line 200
    iput-object p2, p0, Lcom/android/camera/stats/UsageStatistics;->authorStats:Lcom/android/camera/stats/AuthorStatsHelper;

    .line 201
    return-void
.end method

.method public lightcycleCaptureDoneEvent(IILjava/lang/String;Lcom/android/camera/exif/ExifInterface;F)V
    .locals 2

    .prologue
    .line 567
    new-instance v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p3}, Lcom/android/camera/stats/CaptureDoneEventBuilder;-><init>(IZLjava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 569
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setZoom(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    .line 570
    invoke-virtual {v0, p5}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setProcessingTime(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    .line 572
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 573
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$PanoMetaData;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$PanoMetaData;-><init>()V

    .line 574
    iput p2, v1, Lcom/google/common/logging/nano/eventprotos$PanoMetaData;->type:I

    .line 575
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setPanoramaMetaData(Lcom/google/common/logging/nano/eventprotos$PanoMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    .line 578
    :cond_0
    if-eqz p4, :cond_1

    .line 579
    invoke-virtual {v0, p4}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    .line 582
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->submitCaptureDoneEvent(Lcom/android/camera/stats/CaptureDoneEventBuilder;)V

    .line 583
    return-void
.end method

.method public mediaInteraction(Ljava/lang/String;IIF)V
    .locals 3

    .prologue
    .line 253
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 254
    const/4 v1, 0x5

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 255
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    .line 256
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    iget-object v2, p0, Lcom/android/camera/stats/UsageStatistics;->filenameHasher:Lcom/android/camera/stats/FilenameHasher;

    invoke-virtual {v2, p1}, Lcom/android/camera/stats/FilenameHasher;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->fileNameHash:Ljava/lang/String;

    .line 257
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    iput p2, v1, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->interactionType:I

    .line 258
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    iput p3, v1, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->cause:I

    .line 259
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    iput p4, v1, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->age:F

    .line 262
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 264
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/camera/stats/UsageStatistics$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/stats/UsageStatistics$3;-><init>(Lcom/android/camera/stats/UsageStatistics;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 273
    :cond_1
    return-void
.end method

.method public mediaRecorderFailure()V
    .locals 3

    .prologue
    .line 860
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 861
    const/4 v1, 0x7

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 862
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CameraFailure;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    .line 863
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    const/16 v2, 0x8

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->reason:I

    .line 864
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    iget-object v2, p0, Lcom/android/camera/stats/UsageStatistics;->buildDisplay:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->osBuildDisplay:Ljava/lang/String;

    .line 865
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 866
    return-void
.end method

.method public mediaView(Ljava/lang/String;JF)V
    .locals 8

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeMs()J

    move-result-wide v4

    .line 318
    const-wide/16 v0, 0x7530

    add-long/2addr v0, p2

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->viewRecords:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->viewRecords:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/UsageStatistics$ViewRecord;

    .line 325
    iget v1, v0, Lcom/android/camera/stats/UsageStatistics$ViewRecord;->zoom:F

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    .line 326
    invoke-static {v0, p4, v4, v5}, Lcom/android/camera/stats/UsageStatistics$ViewRecord;->access$300(Lcom/android/camera/stats/UsageStatistics$ViewRecord;FJ)V

    goto :goto_0

    .line 329
    :cond_2
    iget-object v6, p0, Lcom/android/camera/stats/UsageStatistics;->viewRecords:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/android/camera/stats/UsageStatistics$ViewRecord;

    move-wide v1, p2

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/stats/UsageStatistics$ViewRecord;-><init>(JFJ)V

    invoke-virtual {v6, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCaptureCanceled(JLcom/android/camera/session/CaptureSession$SessionType;II)V
    .locals 7

    .prologue
    .line 1016
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;-><init>()V

    .line 1017
    invoke-direct {p0, p3}, Lcom/android/camera/stats/UsageStatistics;->sessionTypeToCaptureMode(Lcom/android/camera/session/CaptureSession$SessionType;)I

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    .line 1019
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 1020
    const/16 v2, 0x14

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 1021
    new-instance v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;

    invoke-direct {v2}, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;-><init>()V

    iput-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileAbortedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;

    .line 1022
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileAbortedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;

    iput-wide p1, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureStartNs:J

    .line 1023
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileAbortedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;

    iget-object v3, p0, Lcom/android/camera/stats/UsageStatistics;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureAbortNs:J

    .line 1024
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileAbortedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;

    iput-object v0, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 1025
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileAbortedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;

    invoke-direct {p0, p4, p5}, Lcom/android/camera/stats/UsageStatistics;->buildCaptureTrace(II)Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    move-result-object v3

    iput-object v3, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    .line 1029
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->cameraConfigToStringTag(Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureCanceled"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0, v1}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 1032
    return-void

    .line 1030
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCaptureFailed(JLcom/android/camera/session/CaptureSession$SessionType;II)V
    .locals 7

    .prologue
    .line 1044
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;-><init>()V

    .line 1045
    invoke-direct {p0, p3}, Lcom/android/camera/stats/UsageStatistics;->sessionTypeToCaptureMode(Lcom/android/camera/session/CaptureSession$SessionType;)I

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    .line 1047
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 1048
    const/16 v2, 0x19

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 1049
    new-instance v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;

    invoke-direct {v2}, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;-><init>()V

    iput-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileFailedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;

    .line 1050
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileFailedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;

    iput-wide p1, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureStartNs:J

    .line 1051
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileFailedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;

    iget-object v3, p0, Lcom/android/camera/stats/UsageStatistics;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureFailNs:J

    .line 1052
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileFailedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;

    iput-object v0, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 1053
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileFailedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;

    invoke-direct {p0, p4, p5}, Lcom/android/camera/stats/UsageStatistics;->buildCaptureTrace(II)Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    move-result-object v3

    iput-object v3, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    .line 1057
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->cameraConfigToStringTag(Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 1058
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureFailed"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-direct {p0, v1}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 1060
    return-void

    .line 1058
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCapturePersisted(JJJJJJJ[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;JLcom/android/camera/session/CaptureSession$SessionType;II)V
    .locals 7

    .prologue
    .line 963
    new-instance v2, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    invoke-direct {v2}, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;-><init>()V

    .line 964
    move-object/from16 v0, p18

    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->sessionTypeToCaptureMode(Lcom/android/camera/session/CaptureSession$SessionType;)I

    move-result v3

    iput v3, v2, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    .line 966
    new-instance v3, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;

    invoke-direct {v3}, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;-><init>()V

    .line 967
    iput-wide p1, v3, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureStartNs:J

    .line 968
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_0

    .line 969
    iput-wide p3, v3, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureTinyThumbNs:J

    .line 971
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_1

    .line 972
    iput-wide p5, v3, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureMediumThumbNs:J

    .line 974
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-lez v4, :cond_2

    .line 975
    iput-wide p7, v3, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureProcessingStartNs:J

    .line 977
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, p9, v4

    if-lez v4, :cond_3

    .line 978
    move-wide/from16 v0, p9

    iput-wide v0, v3, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureProcessingEndNs:J

    .line 980
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, p16, v4

    if-lez v4, :cond_4

    .line 981
    move-wide/from16 v0, p16

    iput-wide v0, v3, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->capturePersistedEndNs:J

    .line 983
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v4, p11, v4

    if-lez v4, :cond_5

    .line 984
    move-wide/from16 v0, p11

    iput-wide v0, v3, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureFrameSelectStartNs:J

    .line 986
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, p13, v4

    if-lez v4, :cond_6

    .line 987
    move-wide/from16 v0, p13

    iput-wide v0, v3, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureFrameSelectEndNs:J

    .line 989
    :cond_6
    if-eqz p15, :cond_7

    .line 990
    move-object/from16 v0, p15

    iput-object v0, v3, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureScoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    .line 993
    :cond_7
    new-instance v4, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;

    invoke-direct {v4}, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;-><init>()V

    .line 994
    iput-object v3, v4, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->timing:Lcom/google/common/logging/nano/eventprotos$CaptureTiming;

    .line 995
    iput-object v2, v4, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 996
    move/from16 v0, p19

    move/from16 v1, p20

    invoke-direct {p0, v0, v1}, Lcom/android/camera/stats/UsageStatistics;->buildCaptureTrace(II)Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    move-result-object v3

    iput-object v3, v4, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    .line 998
    new-instance v3, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v3}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 999
    const/16 v5, 0x13

    iput v5, v3, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 1000
    iput-object v4, v3, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;

    .line 1002
    invoke-direct {p0, v2}, Lcom/android/camera/stats/UsageStatistics;->cameraConfigToStringTag(Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 1003
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->TAG:Ljava/lang/String;

    const-string v5, "onCapturePersisted"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v4, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-direct {p0, v3}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 1005
    return-void

    .line 1003
    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCaptureStartCommitted(JLcom/android/camera/session/CaptureSession$SessionType;II)V
    .locals 7

    .prologue
    .line 927
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;-><init>()V

    .line 928
    invoke-direct {p0, p3}, Lcom/android/camera/stats/UsageStatistics;->sessionTypeToCaptureMode(Lcom/android/camera/session/CaptureSession$SessionType;)I

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    .line 930
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 931
    const/16 v2, 0x1a

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 932
    new-instance v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;

    invoke-direct {v2}, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;-><init>()V

    iput-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartCommittedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;

    .line 934
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartCommittedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;

    iput-wide p1, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureStartNs:J

    .line 935
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartCommittedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;

    iget-object v3, p0, Lcom/android/camera/stats/UsageStatistics;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    .line 936
    invoke-virtual {v3}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureStartCommittedNs:J

    .line 937
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartCommittedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;

    iput-object v0, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 938
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartCommittedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;

    invoke-direct {p0, p4, p5}, Lcom/android/camera/stats/UsageStatistics;->buildCaptureTrace(II)Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    move-result-object v3

    iput-object v3, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    .line 942
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->cameraConfigToStringTag(Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 943
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureStartCommitted"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-direct {p0, v1}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 945
    return-void

    .line 943
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCaptureStarted(JLcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 5

    .prologue
    .line 905
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;-><init>()V

    .line 906
    invoke-direct {p0, p3}, Lcom/android/camera/stats/UsageStatistics;->sessionTypeToCaptureMode(Lcom/android/camera/session/CaptureSession$SessionType;)I

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    .line 908
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 909
    const/16 v2, 0x12

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 910
    new-instance v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;

    invoke-direct {v2}, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;-><init>()V

    iput-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;

    .line 911
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;

    iput-wide p1, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->captureStartNs:J

    .line 912
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;

    iput-object v0, v2, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 914
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->cameraConfigToStringTag(Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 915
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureStarted"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-direct {p0, v1}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 917
    return-void

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShutterButtonReadyStateChanged(Z)V
    .locals 6

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    .line 394
    iget-boolean v2, p0, Lcom/android/camera/stats/UsageStatistics;->shutterButtonReadyState:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/stats/UsageStatistics;->shutterButtonReadyStateChangedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 397
    iget-wide v2, p0, Lcom/android/camera/stats/UsageStatistics;->shutterButtonReadyStateChangedTime:J

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/camera/stats/UsageStatistics;->blockShotEvent(JJ)V

    .line 400
    :cond_0
    iput-wide v0, p0, Lcom/android/camera/stats/UsageStatistics;->shutterButtonReadyStateChangedTime:J

    .line 401
    iput-boolean p1, p0, Lcom/android/camera/stats/UsageStatistics;->shutterButtonReadyState:Z

    .line 402
    return-void
.end method

.method public onUnhandledException(ILjava/lang/String;III)V
    .locals 0

    .prologue
    .line 809
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;III)V

    .line 810
    return-void
.end method

.method public openDeviceRetryEvent(I)V
    .locals 2

    .prologue
    .line 1225
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 1226
    const/16 v1, 0x16

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 1227
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$OpenDeviceRetryEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$OpenDeviceRetryEvent;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->openDeviceRetryEvent:Lcom/google/common/logging/nano/eventprotos$OpenDeviceRetryEvent;

    .line 1228
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->openDeviceRetryEvent:Lcom/google/common/logging/nano/eventprotos$OpenDeviceRetryEvent;

    iput p1, v1, Lcom/google/common/logging/nano/eventprotos$OpenDeviceRetryEvent;->result:I

    .line 1229
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 1230
    return-void
.end method

.method public photoCaptureDoneEvent(ILjava/lang/String;Lcom/android/camera/exif/ExifInterface;ZZZFLjava/lang/String;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Lcom/google/android/apps/camera/uiutils/TouchCoordinate;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Float;Landroid/graphics/Rect;Ljava/lang/Float;Lcom/android/camera/stats/LuckyShotMetaDataBuilder;Lcom/google/common/logging/nano/eventprotos$MeteringData;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/camera/exif/ExifInterface;",
            "ZZZF",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Lcom/google/android/apps/camera/uiutils/TouchCoordinate;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;",
            ">;",
            "Ljava/lang/Float;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/Float;",
            "Lcom/android/camera/stats/LuckyShotMetaDataBuilder;",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 673
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/stats/UsageStatistics;->lastCaptureTimeMs:J

    .line 675
    new-instance v2, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;

    invoke-direct {v2}, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;-><init>()V

    .line 676
    iput-boolean p5, v2, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->hdr:Z

    .line 677
    iput-boolean p6, v2, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->flash:Z

    .line 679
    if-nez p14, :cond_0

    .line 680
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p14

    .line 683
    :cond_0
    new-instance v3, Lcom/android/camera/stats/CaptureDoneEventBuilder;

    invoke-direct {v3, p1, p4, p2}, Lcom/android/camera/stats/CaptureDoneEventBuilder;-><init>(IZLjava/lang/String;)V

    .line 685
    invoke-virtual {v3, p3}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v3

    .line 686
    invoke-virtual {v3, p7}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setZoom(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v3

    .line 687
    invoke-virtual {v3, p8}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setFlashSetting(Ljava/lang/String;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v3

    .line 688
    invoke-virtual {v3, p10}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setGridLinesOn(Z)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v3

    .line 689
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setTimerSeconds(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v3

    .line 690
    invoke-virtual {v3, v2}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setPhotoMeta(Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v2

    .line 691
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setProcessingTime(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v2

    .line 692
    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v2

    .line 693
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setVolumeButtonShutter(Z)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v2

    .line 694
    move-object/from16 v0, p15

    move-object/from16 v1, p17

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setFaces(Ljava/util/List;Landroid/graphics/Rect;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v2

    .line 695
    move-object/from16 v0, p18

    invoke-virtual {v2, v0}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setDirtyLensProbability(Ljava/lang/Float;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v2

    .line 696
    move/from16 v0, p21

    invoke-virtual {v2, v0}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setCaptureFailure(I)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v2

    .line 698
    if-eqz p19, :cond_1

    .line 699
    invoke-virtual/range {p19 .. p19}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->build()Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setLuckyShotMeta(Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    .line 702
    :cond_1
    if-eqz p20, :cond_2

    .line 703
    move-object/from16 v0, p20

    invoke-virtual {v2, v0}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setMeteringData(Lcom/google/common/logging/nano/eventprotos$MeteringData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    .line 707
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/stats/UsageStatistics;->submitCaptureDoneEvent(Lcom/android/camera/stats/CaptureDoneEventBuilder;)V

    .line 708
    return-void
.end method

.method public photosphereCaptureComputeEvent(IIIF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 535
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;-><init>()V

    .line 536
    iput p2, v0, Lcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;->numberOfTargets:I

    .line 537
    iput p3, v0, Lcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;->undoCount:I

    .line 538
    iput p4, v0, Lcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;->duration:F

    .line 539
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/camera/stats/UsageStatistics;->captureComputeEvent(ILcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;)V

    .line 540
    return-void
.end method

.method public prewarmCooldown(Z)V
    .locals 3

    .prologue
    .line 879
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 880
    const/16 v1, 0x15

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 881
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;-><init>()V

    .line 882
    const/4 v2, 0x2

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;->type:I

    .line 883
    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraPrewarmEvent:Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;

    .line 884
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 885
    return-void
.end method

.method public prewarmStarted()V
    .locals 3

    .prologue
    .line 869
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 870
    const/16 v1, 0x15

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 871
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;-><init>()V

    .line 872
    const/4 v2, 0x1

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;->type:I

    .line 873
    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraPrewarmEvent:Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;

    .line 875
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 876
    return-void
.end method

.method public prewarmTimeout()V
    .locals 3

    .prologue
    .line 888
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 889
    const/16 v1, 0x15

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 890
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;-><init>()V

    .line 891
    const/4 v2, 0x3

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;->type:I

    .line 892
    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraPrewarmEvent:Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;

    .line 894
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 895
    return-void
.end method

.method public pushDirtyLensEvent(Ljava/lang/Integer;Ljava/lang/Float;Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 4

    .prologue
    .line 376
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;-><init>()V

    .line 377
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->type:I

    .line 378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->timeNs:J

    .line 379
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->dirtyLensProbability:F

    .line 380
    if-nez p3, :cond_0

    .line 381
    const/4 v0, -0x1

    :goto_0
    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->cameraDirection:I

    .line 383
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->dirtyLensEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 384
    return-void

    .line 381
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p3, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public refocusCaptureComputeEvent(ZZZZZZZZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 512
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;-><init>()V

    .line 513
    iput-boolean p1, v0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->motionTooFastError:Z

    .line 514
    iput-boolean p2, v0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->motionTooSlowError:Z

    .line 515
    iput-boolean p3, v0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->trackingFailedError:Z

    .line 516
    iput-boolean p4, v0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->viewportError:Z

    .line 517
    iput-boolean p5, v0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->sceneError:Z

    .line 518
    iput-boolean p6, v0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->userCanceled:Z

    .line 519
    iput-boolean p7, v0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasViewportWarning:Z

    .line 520
    iput-boolean p8, v0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasMotionTooFastWarning:Z

    .line 521
    iput-boolean p9, v0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasLowLightWarning:Z

    .line 522
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/android/camera/stats/UsageStatistics;->captureComputeEvent(ILcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;)V

    .line 523
    return-void
.end method

.method public refocusCaptureDoneEvent(Ljava/lang/String;Lcom/android/camera/exif/ExifInterface;ZFZ)V
    .locals 3

    .prologue
    .line 594
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$LensBlurMetaData;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$LensBlurMetaData;-><init>()V

    .line 595
    if-eqz p5, :cond_0

    .line 597
    const/4 v0, 0x1

    .line 598
    :goto_0
    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$LensBlurMetaData;->processingResult:I

    .line 600
    new-instance v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;

    const/4 v2, 0x6

    invoke-direct {v0, v2, p3, p1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;-><init>(IZLjava/lang/String;)V

    .line 602
    invoke-virtual {v0, p2}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 603
    invoke-virtual {v0, v2}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setZoom(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    .line 604
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setLensBlurMetaData(Lcom/google/common/logging/nano/eventprotos$LensBlurMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    .line 605
    invoke-virtual {v0, p4}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setProcessingTime(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    .line 600
    invoke-virtual {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->submitCaptureDoneEvent(Lcom/android/camera/stats/CaptureDoneEventBuilder;)V

    .line 606
    return-void

    .line 598
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public reportMemoryConsumed(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1200
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 1201
    const/16 v0, 0xf

    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 1202
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$MemoryReport;-><init>()V

    iput-object v0, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    .line 1203
    iget-object v0, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    iput-object p2, v0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->reportType:Ljava/lang/String;

    .line 1204
    if-eqz p1, :cond_0

    .line 1205
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    const-string v0, "availMem"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryAvailable:J

    .line 1206
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    const-string v0, "totalMem"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryTotal:J

    .line 1207
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    const-string v0, "memoryClass"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryClass:J

    .line 1208
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    const-string v0, "largeMemoryClass"

    .line 1209
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->largeMemoryClass:J

    .line 1210
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    const-string v0, "totalPSS"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->totalPss:J

    .line 1211
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    const-string v0, "nativePSS"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->nativePss:J

    .line 1212
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    const-string v0, "dalvikPSS"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->dalvikPss:J

    .line 1213
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    const-string v0, "otherPSS"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->otherPss:J

    .line 1214
    iget-object v2, v1, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    const-string v0, "threshold"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->threshold:J

    .line 1216
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 1217
    return-void
.end method

.method public setBuildSource(Lcom/android/camera/util/app/AppProperties$BuildSource;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/camera/stats/UsageStatistics;->buildSource:Lcom/android/camera/util/app/AppProperties$BuildSource;

    .line 214
    return-void
.end method

.method public setChangeCamMethod(I)V
    .locals 0

    .prologue
    .line 221
    iput p1, p0, Lcom/android/camera/stats/UsageStatistics;->changeCamMethod:I

    .line 222
    return-void
.end method

.method public setIsTestDevice(Z)V
    .locals 0

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/android/camera/stats/UsageStatistics;->isTestDevice:Z

    .line 230
    return-void
.end method

.method public setNextSessionID()J
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/UsageStatistics;->sessionId:J

    .line 205
    iget-wide v0, p0, Lcom/android/camera/stats/UsageStatistics;->sessionId:J

    return-wide v0
.end method

.method public smartburstCaptureDoneEvent(Lcom/android/camera/stats/SmartBurstMetaData;Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 5

    .prologue
    .line 612
    invoke-virtual {p1}, Lcom/android/camera/stats/SmartBurstMetaData;->getProto()Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    move-result-object v1

    .line 613
    invoke-virtual {p1}, Lcom/android/camera/stats/SmartBurstMetaData;->getSessionDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 615
    new-instance v3, Lcom/android/camera/stats/CaptureDoneEventBuilder;

    const/16 v4, 0x11

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v3, v4, v0, v2}, Lcom/android/camera/stats/CaptureDoneEventBuilder;-><init>(IZLjava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 618
    invoke-virtual {v3, v0}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setZoom(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    .line 619
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setSmartBurstMeta(Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    .line 615
    invoke-virtual {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->submitCaptureDoneEvent(Lcom/android/camera/stats/CaptureDoneEventBuilder;)V

    .line 620
    return-void

    .line 615
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public storageWarning(J)V
    .locals 3

    .prologue
    .line 464
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;-><init>()V

    .line 465
    const/16 v1, 0x11

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 466
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$StorageWarning;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$StorageWarning;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->storageWarning:Lcom/google/common/logging/nano/eventprotos$StorageWarning;

    .line 467
    iget-object v1, v0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->storageWarning:Lcom/google/common/logging/nano/eventprotos$StorageWarning;

    iput-wide p1, v1, Lcom/google/common/logging/nano/eventprotos$StorageWarning;->storageSpace:J

    .line 468
    invoke-direct {p0, v0}, Lcom/android/camera/stats/UsageStatistics;->playLogCameraEvent(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 469
    return-void
.end method

.method submitCaptureDoneEvent(Lcom/android/camera/stats/CaptureDoneEventBuilder;)V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/camera/stats/UsageStatistics$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/stats/UsageStatistics$5;-><init>(Lcom/android/camera/stats/UsageStatistics;Lcom/android/camera/stats/CaptureDoneEventBuilder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 558
    return-void
.end method

.method public tapToFocus(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;Ljava/lang/Float;)V
    .locals 3

    .prologue
    .line 1123
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;-><init>()V

    .line 1124
    if-eqz p2, :cond_0

    .line 1125
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->duration:F

    .line 1127
    :cond_0
    new-instance v1, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;-><init>()V

    .line 1128
    if-eqz p1, :cond_1

    .line 1129
    invoke-virtual {p1}, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->getX()F

    move-result v2

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->x:F

    .line 1130
    invoke-virtual {p1}, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->getY()F

    move-result v2

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->y:F

    .line 1131
    invoke-virtual {p1}, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->getMaxX()F

    move-result v2

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxX:F

    .line 1132
    invoke-virtual {p1}, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->getMaxY()F

    move-result v2

    iput v2, v1, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxY:F

    .line 1134
    :cond_1
    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->touchCoord:Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;

    .line 1135
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/camera/stats/UsageStatistics;->controlUsed(ILcom/google/common/logging/nano/eventprotos$TapToFocusMeta;)V

    .line 1136
    return-void
.end method

.method public videoCaptureDoneEvent(ZLjava/lang/String;Lcom/android/camera/one/OneCamera$Facing;Landroid/util/Size;JJFZZZI)V
    .locals 7

    .prologue
    .line 735
    iget-object v2, p0, Lcom/android/camera/stats/UsageStatistics;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeMs()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/stats/UsageStatistics;->lastCaptureTimeMs:J

    .line 737
    new-instance v4, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;

    invoke-direct {v4}, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;-><init>()V

    .line 738
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p5, p6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-float v2, v2

    iput v2, v4, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->duration:F

    .line 739
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v4, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->width:I

    .line 740
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v4, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->height:I

    .line 741
    iput-wide p7, v4, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->size:J

    .line 742
    move/from16 v0, p9

    iput v0, v4, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->frameRate:F

    .line 743
    move/from16 v0, p12

    iput-boolean v0, v4, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->isStabilizationUsed:Z

    .line 744
    move/from16 v0, p13

    iput v0, v4, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->cameraFrameDropCount:I

    .line 747
    if-eqz p1, :cond_0

    .line 748
    const/16 v2, 0x14

    .line 753
    :goto_0
    new-instance v5, Lcom/android/camera/stats/CaptureDoneEventBuilder;

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p3, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-direct {v5, v2, v3, p2}, Lcom/android/camera/stats/CaptureDoneEventBuilder;-><init>(IZLjava/lang/String;)V

    if-eqz p10, :cond_2

    .line 755
    const/4 v2, 0x3

    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setFlashSetting(I)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v2

    .line 756
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setGridLinesOn(Z)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v2

    .line 757
    invoke-virtual {v2, v4}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setVideoMeta(Lcom/google/common/logging/nano/eventprotos$VideoMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v2

    .line 753
    invoke-virtual {p0, v2}, Lcom/android/camera/stats/UsageStatistics;->submitCaptureDoneEvent(Lcom/android/camera/stats/CaptureDoneEventBuilder;)V

    .line 760
    return-void

    .line 750
    :cond_0
    const/16 v2, 0x8

    goto :goto_0

    .line 753
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 755
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public videoSnapshotCaptureDoneEvent(Ljava/lang/String;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/exif/ExifInterface;FZF)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/stats/UsageStatistics;->lastCaptureTimeMs:J

    .line 783
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v0, :cond_1

    move v0, v1

    .line 784
    :goto_0
    new-instance v2, Lcom/android/camera/stats/CaptureDoneEventBuilder;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v0, p1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;-><init>(IZLjava/lang/String;)V

    .line 787
    invoke-virtual {v2, p3}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    .line 788
    invoke-virtual {v0, p4}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setZoom(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 789
    const/4 v1, 0x3

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setFlashSetting(I)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    .line 790
    invoke-virtual {v0, p6}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setProcessingTime(F)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    .line 792
    invoke-virtual {p0, v2}, Lcom/android/camera/stats/UsageStatistics;->submitCaptureDoneEvent(Lcom/android/camera/stats/CaptureDoneEventBuilder;)V

    .line 793
    return-void

    .line 783
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
