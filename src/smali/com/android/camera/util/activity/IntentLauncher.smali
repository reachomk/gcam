.class public Lcom/android/camera/util/activity/IntentLauncher;
.super Ljava/lang/Object;
.source "IntentLauncher.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final intentStarter:Lcom/android/camera/util/activity/IntentStarter;

.field private final isSecureActivity:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/util/activity/IntentStarter;Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 2026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2027
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/activity/IntentStarter;

    iput-object v0, p0, Lcom/android/camera/util/activity/IntentLauncher;->intentStarter:Lcom/android/camera/util/activity/IntentStarter;

    .line 2028
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/camera/util/activity/IntentLauncher;->context:Landroid/content/Context;

    .line 2029
    iput-boolean p3, p0, Lcom/android/camera/util/activity/IntentLauncher;->isSecureActivity:Z

    .line 2030
    return-void
.end method

.method private unlockAndStartActivity(Landroid/content/Intent;Z)V
    .locals 3

    .prologue
    .line 2049
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    iget-boolean v0, p0, Lcom/android/camera/util/activity/IntentLauncher;->isSecureActivity:Z

    if-eqz v0, :cond_0

    .line 2051
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/util/activity/IntentLauncher;->context:Landroid/content/Context;

    const-class v2, Lcom/android/camera/activity/TrampolineActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.INTENT"

    .line 2053
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "push_camera"

    .line 2054
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 2064
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, 0x8000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2065
    iget-object v1, p0, Lcom/android/camera/util/activity/IntentLauncher;->intentStarter:Lcom/android/camera/util/activity/IntentStarter;

    invoke-interface {v1, v0}, Lcom/android/camera/util/activity/IntentStarter;->startActivity(Landroid/content/Intent;)V

    .line 2069
    :goto_0
    return-void

    .line 2068
    :cond_0
    iget-object v0, p0, Lcom/android/camera/util/activity/IntentLauncher;->intentStarter:Lcom/android/camera/util/activity/IntentStarter;

    invoke-interface {v0, p1}, Lcom/android/camera/util/activity/IntentStarter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public unlockAndStartActivity(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/util/activity/IntentLauncher;->unlockAndStartActivity(Landroid/content/Intent;Z)V

    .line 1040
    return-void
.end method

.method public unlockAndStartChildActivity(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1034
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/util/activity/IntentLauncher;->unlockAndStartActivity(Landroid/content/Intent;Z)V

    .line 1035
    return-void
.end method
