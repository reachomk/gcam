.class public final Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;
.super Ljava/lang/Object;
.source "AutoFlashHdrPlusDecisionInputSignals.java"


# instance fields
.field final flashSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

.field final flashSupported:Z

.field final halRecommendsFlash:Z

.field final hdrPlusAvailable:Z

.field final hdrPlusSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "FBDecInputSignals"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ZLcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;ZZZ)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    if-eqz p4, :cond_0

    .line 38
    const/4 p4, 0x0

    .line 41
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->flashSupported:Z

    .line 42
    if-eqz p6, :cond_1

    sget-object p2, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->OFF:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    :cond_1
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->flashSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    .line 43
    iput-object p3, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->hdrPlusSetting:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    .line 44
    iput-boolean p4, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->halRecommendsFlash:Z

    .line 45
    iput-boolean p5, p0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecisionInputSignals;->hdrPlusAvailable:Z

    .line 46
    return-void
.end method
