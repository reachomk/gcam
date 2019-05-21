.class final Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$3;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 373
    new-instance v0, Lcom/android/camera/util/GoogleHelpHelper;

    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/camera/util/GoogleHelpHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/camera/util/GoogleHelpHelper;->launchGoogleHelp()V

    .line 374
    const/4 v0, 0x1

    return v0
.end method
