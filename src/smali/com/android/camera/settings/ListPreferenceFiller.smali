.class public Lcom/android/camera/settings/ListPreferenceFiller;
.super Ljava/lang/Object;
.source "ListPreferenceFiller.java"


# instance fields
.field final synthetic this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V
    .locals 0

    .prologue
    .line 2336
    iput-object p1, p0, Lcom/android/camera/settings/ListPreferenceFiller;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Ljava/util/List;Landroid/preference/ListPreference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Landroid/preference/ListPreference;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/camera/settings/ListPreferenceFiller;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-static {v0, p1, p2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->access$200(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;Ljava/util/List;Landroid/preference/ListPreference;)V

    .line 1340
    return-void
.end method
