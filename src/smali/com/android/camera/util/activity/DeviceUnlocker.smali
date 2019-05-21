.class public Lcom/android/camera/util/activity/DeviceUnlocker;
.super Ljava/lang/Object;
.source "DeviceUnlocker.java"


# instance fields
.field private final callingActivity:Landroid/app/Activity;

.field private final intentLauncher:Lcom/android/camera/util/activity/IntentLauncher;

.field private final openFilmstripIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/activity/IntentLauncher;Landroid/content/Intent;Lcom/android/camera/activity/gca/GcaActivity;)V
    .locals 1

    .prologue
    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2021
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/activity/IntentLauncher;

    iput-object v0, p0, Lcom/android/camera/util/activity/DeviceUnlocker;->intentLauncher:Lcom/android/camera/util/activity/IntentLauncher;

    .line 2022
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/camera/util/activity/DeviceUnlocker;->openFilmstripIntent:Landroid/content/Intent;

    .line 2023
    iput-object p3, p0, Lcom/android/camera/util/activity/DeviceUnlocker;->callingActivity:Landroid/app/Activity;

    .line 2024
    return-void
.end method


# virtual methods
.method public unlockAndOpenFilmstrip()V
    .locals 2

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/camera/util/activity/DeviceUnlocker;->intentLauncher:Lcom/android/camera/util/activity/IntentLauncher;

    iget-object v1, p0, Lcom/android/camera/util/activity/DeviceUnlocker;->openFilmstripIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/camera/util/activity/IntentLauncher;->unlockAndStartActivity(Landroid/content/Intent;)V

    .line 1030
    iget-object v0, p0, Lcom/android/camera/util/activity/DeviceUnlocker;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1031
    return-void
.end method

.method public unlockAndOpenFilmstrip(I)V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/camera/util/activity/DeviceUnlocker;->openFilmstripIntent:Landroid/content/Intent;

    const-string v1, "filmstrip_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1036
    invoke-virtual {p0}, Lcom/android/camera/util/activity/DeviceUnlocker;->unlockAndOpenFilmstrip()V

    .line 1037
    return-void
.end method
