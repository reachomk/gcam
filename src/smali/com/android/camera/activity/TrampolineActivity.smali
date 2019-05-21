.class public Lcom/android/camera/activity/TrampolineActivity;
.super Landroid/app/Activity;
.source "TrampolineActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/android/camera/activity/TrampolineActivity;

.field private static final instanceLock:Ljava/lang/Object;


# instance fields
.field private pushCameraToTaskStack:Z

.field private resumedLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final screenOffReceiver:Landroid/content/BroadcastReceiver;

.field private targetIntent:Landroid/content/Intent;

.field private final unlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "TrampolineActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/activity/TrampolineActivity;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/activity/TrampolineActivity;->instanceLock:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/activity/TrampolineActivity;->instance:Lcom/android/camera/activity/TrampolineActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/activity/TrampolineActivity;->pushCameraToTaskStack:Z

    .line 57
    new-instance v0, Lcom/android/camera/activity/TrampolineActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/activity/TrampolineActivity$1;-><init>(Lcom/android/camera/activity/TrampolineActivity;)V

    iput-object v0, p0, Lcom/android/camera/activity/TrampolineActivity;->unlockReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    new-instance v0, Lcom/android/camera/activity/TrampolineActivity$2;

    invoke-direct {v0}, Lcom/android/camera/activity/TrampolineActivity$2;-><init>()V

    iput-object v0, p0, Lcom/android/camera/activity/TrampolineActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/activity/TrampolineActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/activity/TrampolineActivity;->launchTargetActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/activity/TrampolineActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/activity/TrampolineActivity;->unlockReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static close()V
    .locals 2

    .prologue
    .line 167
    sget-object v1, Lcom/android/camera/activity/TrampolineActivity;->instanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->instance:Lcom/android/camera/activity/TrampolineActivity;

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->instance:Lcom/android/camera/activity/TrampolineActivity;

    invoke-virtual {v0}, Lcom/android/camera/activity/TrampolineActivity;->finish()V

    .line 171
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/activity/TrampolineActivity;->instance:Lcom/android/camera/activity/TrampolineActivity;

    .line 172
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final launchTargetActivity(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 152
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->TAG:Ljava/lang/String;

    const-string v1, "Device unlocked, firing target intent."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/activity/main/CameraActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    .line 156
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-static {p1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 158
    iget-boolean v2, p0, Lcom/android/camera/activity/TrampolineActivity;->pushCameraToTaskStack:Z

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/camera/activity/TrampolineActivity;->targetIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 163
    invoke-static {}, Lcom/android/camera/activity/TrampolineActivity;->close()V

    .line 164
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 76
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->TAG:Ljava/lang/String;

    const-string v1, "Trampoline onCreate"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/android/camera/activity/TrampolineActivity;->instanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    sput-object p0, Lcom/android/camera/activity/TrampolineActivity;->instance:Lcom/android/camera/activity/TrampolineActivity;

    .line 79
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/activity/TrampolineActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 84
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/camera/activity/TrampolineActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/activity/TrampolineActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/activity/TrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 91
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/camera/activity/TrampolineActivity;->targetIntent:Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/android/camera/activity/TrampolineActivity;->targetIntent:Landroid/content/Intent;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "push_camera"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/activity/TrampolineActivity;->pushCameraToTaskStack:Z

    .line 95
    return-void

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->TAG:Ljava/lang/String;

    const-string v1, "Trampoline onDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/activity/TrampolineActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/activity/TrampolineActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 149
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->TAG:Ljava/lang/String;

    const-string v1, "Trampoline onNewIntent"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->TAG:Ljava/lang/String;

    const-string v1, "Trampoline onPause"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/activity/TrampolineActivity;->resumedLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 124
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    new-instance v0, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    iput-object v0, p0, Lcom/android/camera/activity/TrampolineActivity;->resumedLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 101
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->TAG:Ljava/lang/String;

    const-string v1, "Trampoline onResume"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/camera/activity/TrampolineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 103
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->TAG:Ljava/lang/String;

    const-string v1, "Waiting for device to be unlocked"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/camera/activity/TrampolineActivity;->unlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/activity/TrampolineActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/android/camera/activity/TrampolineActivity;->resumedLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v1, Lcom/android/camera/activity/TrampolineActivity$3;

    invoke-direct {v1, p0}, Lcom/android/camera/activity/TrampolineActivity$3;-><init>(Lcom/android/camera/activity/TrampolineActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->TAG:Ljava/lang/String;

    const-string v1, "Launching target activity from onResume"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p0}, Lcom/android/camera/activity/TrampolineActivity;->launchTargetActivity(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->TAG:Ljava/lang/String;

    const-string v1, "Trampoline onStart"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 136
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/android/camera/activity/TrampolineActivity;->TAG:Ljava/lang/String;

    const-string v1, "Trampoline onStop"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 142
    return-void
.end method
