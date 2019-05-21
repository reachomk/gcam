.class public final Lcom/android/camera/settings/SettingsUtil$SelectedVideoResolutions;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/SettingsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectedVideoResolutions"
.end annotation


# instance fields
.field public large:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field public medium:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field public small:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_UNKNOWN:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    iput-object v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoResolutions;->large:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 102
    sget-object v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_UNKNOWN:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    iput-object v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoResolutions;->medium:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 103
    sget-object v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_UNKNOWN:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    iput-object v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoResolutions;->small:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    return-void
.end method
