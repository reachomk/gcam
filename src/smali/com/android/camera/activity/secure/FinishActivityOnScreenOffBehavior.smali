.class public final Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;
.super Ljava/lang/Object;
.source "FinishActivityOnScreenOffBehavior.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$Finish;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnCreate;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnDestroy;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStart;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStop;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activityContext:Landroid/content/Context;

.field private final activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

.field private isShutdownReceiverRegistered:Z

.field private isStarted:Z

.field private final log:Lcom/android/camera/debug/Logger;

.field private final screenOffReceiver:Landroid/content/BroadcastReceiver;

.field private final userUnlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "ActivityCloseSec"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/util/activity/ActivityFinishWithReason;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->isStarted:Z

    .line 114
    new-instance v0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior$1;

    invoke-direct {v0, p0}, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior$1;-><init>(Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;)V

    iput-object v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior$2;

    invoke-direct {v0, p0}, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior$2;-><init>(Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;)V

    iput-object v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    iput-object p1, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->activityContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

    .line 47
    sget-object v0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->TAG:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->log:Lcom/android/camera/debug/Logger;

    .line 48
    iput-boolean v1, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->isShutdownReceiverRegistered:Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->isStarted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->shutdown(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->log:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method private final detachListeners()V
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->isShutdownReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "Detaching secure activity shutdown receivers."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->activityContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->activityContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->isShutdownReceiverRegistered:Z

    .line 105
    :cond_0
    return-void
.end method

.method private final shutdown(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->detachListeners()V

    .line 111
    iget-object v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/activity/ActivityFinishWithReason;->finish(Ljava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->detachListeners()V

    .line 74
    return-void
.end method

.method public final onCreate$51662RJ4E9NMIP1FDTPIUGJLDPI6OP9R55B0____()V
    .locals 3

    .prologue
    .line 53
    .line 1078
    iget-boolean v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->isShutdownReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "Attaching secure activity shutdown receivers."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 1083
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1084
    iget-object v1, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->activityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1091
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1092
    iget-object v1, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->activityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->isShutdownReceiverRegistered:Z

    .line 54
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->detachListeners()V

    .line 69
    return-void
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->isStarted:Z

    .line 59
    return-void
.end method

.method public final onStop()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->isStarted:Z

    .line 64
    return-void
.end method
