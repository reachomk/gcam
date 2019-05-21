.class public final Lcom/android/camera/settings/CameraFacingSetting;
.super Ljava/lang/Object;
.source "CameraFacingSetting.java"


# instance fields
.field private final cameraFacingBackValue:I

.field private final cameraFacingDefaultValue:I

.field private final cameraFacingFrontValue:I

.field private final cameraFacingSettingKey:Ljava/lang/String;

.field private final settingScope:Ljava/lang/String;

.field private final settingsManager:Lcom/android/camera/settings/SettingsManager;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/android/camera/settings/CameraFacingSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 25
    invoke-static {p3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->settingScope:Ljava/lang/String;

    .line 27
    const-string v0, "pref_camera_id_key"

    iput-object v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->cameraFacingSettingKey:Ljava/lang/String;

    .line 28
    const v0, 0x7f0a0298

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->cameraFacingBackValue:I

    .line 30
    const v0, 0x7f0a0299

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->cameraFacingFrontValue:I

    .line 32
    const v0, 0x7f0a0295

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->cameraFacingDefaultValue:I

    .line 34
    return-void
.end method


# virtual methods
.method public final get()Lcom/android/camera/one/OneCamera$Facing;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/settings/CameraFacingSetting;->settingScope:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/settings/CameraFacingSetting;->cameraFacingSettingKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    iget v1, p0, Lcom/android/camera/settings/CameraFacingSetting;->cameraFacingBackValue:I

    if-ne v0, v1, :cond_0

    .line 58
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    .line 1099
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget v1, p0, Lcom/android/camera/settings/CameraFacingSetting;->cameraFacingFrontValue:I

    if-ne v0, v1, :cond_1

    .line 60
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0

    .line 1098
    :cond_1
    iget v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->cameraFacingDefaultValue:I

    iget v1, p0, Lcom/android/camera/settings/CameraFacingSetting;->cameraFacingBackValue:I

    if-ne v0, v1, :cond_2

    .line 1099
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0

    .line 1101
    :cond_2
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0
.end method

.method public final getCameraFacingAllowingModeSwitch()Lcom/android/camera/one/OneCamera$Facing;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 73
    iget-object v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_mode_switch_camera_id_key"

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 74
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 76
    if-eq v0, v4, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/camera/settings/CameraFacingSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_mode_switch_camera_id_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/camera/settings/CameraFacingSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v2, p0, Lcom/android/camera/settings/CameraFacingSetting;->settingScope:Ljava/lang/String;

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraFacingSetting;->get()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method public final isFacingBack()Z
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraFacingSetting;->get()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraFacingSetting;->isFacingBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Back Camera"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Front Camera"

    goto :goto_0
.end method
