.class final Lcom/android/camera/util/activity/ScreenOnControllerImpl;
.super Ljava/lang/Object;
.source "ScreenOnControllerImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/android/camera/util/activity/ScreenOnController;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnUserInteraction;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnPause;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;
    }
.end annotation


# static fields
.field private static final SCREEN_DELAY_MS:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final clearWindowFlagDelayedExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

.field private final clearWindowFlagRunnable:Ljava/lang/Runnable;

.field private currentScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

.field private desiredScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

.field private isPaused:Z

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final window:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "ScreenOnController"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->TAG:Ljava/lang/String;

    .line 31
    const/16 v0, 0x78

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->secondsToMillisLong(I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->SCREEN_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/async/MainThread;Landroid/view/Window;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->isPaused:Z

    .line 48
    sget v0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->NO_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    iput v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->currentScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    .line 49
    sget v0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->NO_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    iput v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->desiredScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    .line 56
    iput-object p1, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 57
    iput-object p2, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->window:Landroid/view/Window;

    .line 59
    new-instance v0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    sget-wide v2, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->SCREEN_DELAY_MS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p3, v2, v3, v1}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->clearWindowFlagDelayedExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    .line 64
    new-instance v0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/util/activity/ScreenOnControllerImpl$1;-><init>(Lcom/android/camera/util/activity/ScreenOnControllerImpl;)V

    .line 74
    new-instance v1, Lcom/android/camera/util/activity/ScreenOnControllerImpl$2;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/util/activity/ScreenOnControllerImpl$2;-><init>(Lcom/android/camera/util/activity/ScreenOnControllerImpl;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->clearWindowFlagRunnable:Ljava/lang/Runnable;

    .line 81
    return-void
.end method

.method static synthetic access$002$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQN8QBC5TGM6T39EPKN8U9FADHN4PB5DP7MSGRFDPQ74RRCDHIN4IBDE1M3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTBKD5M2UOB3EHKNCQBKF4NL6ORICLIMSJRE8DNMST3IDTM6OPBI95MN0R14ADHN4PB5DP7MSJBFCHIJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLEHKMOBR1CDQ6ITJ9EHSIUKR3E9IMARIFDP1MURJKE9NMOR35E94MQS3C4H9M6SJ5CLN4URIDDTI6AEO_(Lcom/android/camera/util/activity/ScreenOnControllerImpl;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->desiredScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/util/activity/ScreenOnControllerImpl;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->update()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/util/activity/ScreenOnControllerImpl;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method private final update()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 132
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 135
    iget v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->desiredScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    sget v1, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->NO_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->currentScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    sget v1, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->NO_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    if-eq v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->window:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 138
    sget-object v0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Removed FLAG_KEEP_SCREEN_ON"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    iget v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->desiredScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    sget v1, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->NO_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->currentScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    sget v1, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->NO_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    if-ne v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->window:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 145
    sget-object v0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Added FLAG_KEEP_SCREEN_ON"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->clearWindowFlagDelayedExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->reset()V

    .line 152
    iget v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->desiredScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    sget v1, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->KEEP_ON_WITH_TIMEOUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    if-ne v0, v1, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->clearWindowFlagDelayedExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    iget-object v1, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->clearWindowFlagRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->execute(Ljava/lang/Runnable;)V

    .line 157
    :cond_2
    iget v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->desiredScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    iput v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->currentScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    .line 158
    return-void
.end method

.method private final updateIfActive()V
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->isPaused:Z

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->update()V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->isPaused:Z

    .line 86
    sget v0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->NO_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    iput v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->desiredScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    .line 87
    invoke-direct {p0}, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->update()V

    .line 88
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->isPaused:Z

    .line 96
    invoke-direct {p0}, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->update()V

    .line 97
    return-void
.end method

.method public final onUserInteraction()V
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->currentScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    sget v1, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->KEEP_ON$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    if-eq v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->setModeExtendedTimeout()V

    .line 104
    :cond_0
    return-void
.end method

.method public final setModeAlwaysOn()V
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->KEEP_ON$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    iput v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->desiredScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    .line 109
    invoke-direct {p0}, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->updateIfActive()V

    .line 110
    return-void
.end method

.method public final setModeExtendedTimeout()V
    .locals 1

    .prologue
    .line 114
    sget v0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->KEEP_ON_WITH_TIMEOUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    iput v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->desiredScreenOnMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    .line 115
    invoke-direct {p0}, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->updateIfActive()V

    .line 116
    return-void
.end method
