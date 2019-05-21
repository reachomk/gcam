.class public final Lcom/android/camera/settings/AppUpgrader;
.super Lcom/android/camera/settings/SettingsUpgrader;
.source "AppUpgrader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final moduleManager:Lcom/android/camera/module/ModuleManager;

.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "AppUpgrader"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/settings/AppUpgrader;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/camera/module/ModuleManager;Lcom/android/camera/one/OneCameraManager;)V
    .locals 2

    .prologue
    .line 104
    const-string v0, "pref_upgrade_version"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/SettingsUpgrader;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-object p1, p0, Lcom/android/camera/settings/AppUpgrader;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/camera/settings/AppUpgrader;->moduleManager:Lcom/android/camera/module/ModuleManager;

    .line 107
    iput-object p3, p0, Lcom/android/camera/settings/AppUpgrader;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 108
    return-void
.end method

.method private static copyPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 8

    .prologue
    .line 394
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 395
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 396
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 398
    if-nez v0, :cond_1

    .line 399
    sget-object v3, Lcom/android/camera/settings/AppUpgrader;->TAG:Ljava/lang/String;

    const-string v4, "skipped upgrade and removing entry for null key "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v3, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 401
    :cond_1
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 402
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->convert(Z)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 404
    :cond_2
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 405
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->convert(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 407
    :cond_3
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 411
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 412
    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    const-wide/32 v6, -0x80000000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    .line 413
    long-to-int v0, v4

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->convert(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 416
    :cond_4
    sget-object v0, Lcom/android/camera/settings/AppUpgrader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x42

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "skipped upgrade for out of bounds long key "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 418
    :cond_5
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 419
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 421
    :cond_6
    sget-object v3, Lcom/android/camera/settings/AppUpgrader;->TAG:Ljava/lang/String;

    .line 427
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x40

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "skipped upgrade and removing entry for unrecognized key type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v3, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 431
    :cond_7
    return-void
.end method

.method private final upgradeCameraSizeSetting(Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 5

    .prologue
    .line 341
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v0, :cond_0

    .line 346
    const-string v0, "pref_camera_picturesize_front_key"

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/android/camera/settings/AppUpgrader;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v1, p2}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v1

    .line 355
    if-nez v1, :cond_2

    .line 356
    sget-object v1, Lcom/android/camera/settings/AppUpgrader;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to retrieve a camera id for facing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "default_scope"

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :goto_1
    return-void

    .line 347
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v0, :cond_1

    .line 348
    const-string v0, "pref_camera_picturesize_back_key"

    goto :goto_0

    .line 350
    :cond_1
    sget-object v0, Lcom/android/camera/settings/AppUpgrader;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring attempt to upgrade size of unhandled camera facing direction"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 361
    :cond_2
    iget-object v2, p0, Lcom/android/camera/settings/AppUpgrader;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 362
    invoke-interface {v2, v1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    .line 368
    if-nez v2, :cond_3

    .line 369
    sget-object v2, Lcom/android/camera/settings/AppUpgrader;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x36

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to retrieve camera characteristics for camera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v1, "default_scope"

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :cond_3
    const-string v1, "default_scope"

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    const/16 v3, 0x100

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v3

    .line 378
    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    .line 377
    invoke-static {v1, v3, v2}, Lcom/android/camera/settings/SettingsUtil;->getPhotoSize(Ljava/lang/String;Ljava/util/List;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 379
    const-string v2, "default_scope"

    invoke-static {v1}, Lcom/android/camera/util/Size;->toSettingString(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final upgradeModuleSettingsFiles(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;Lcom/android/camera/module/ModuleManager;)V
    .locals 5

    .prologue
    .line 452
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 454
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_2

    .line 455
    aget v1, v2, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 456
    const-string v3, "_preferences_module_"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 459
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 460
    aget v3, v2, v0

    invoke-interface {p3, v3}, Lcom/android/camera/module/ModuleManager;->getModuleAgent(I)Lcom/android/camera/module/ModuleManager$ModuleAgent;

    move-result-object v3

    .line 461
    if-eqz v3, :cond_0

    .line 464
    invoke-interface {v3}, Lcom/android/camera/module/ModuleManager$ModuleAgent;->moduleConfig$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABQDDTI7AR359LGMSOB7CLP28JBFCHQMOPA3DTN6CQB77C______()Lcom/android/camera/ui/DetailsDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/DetailsDialog;->getScopeNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-virtual {p1, v3}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 466
    invoke-static {v1, v3}, Lcom/android/camera/settings/AppUpgrader;->copyPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 470
    :cond_2
    return-void
.end method


# virtual methods
.method protected final getLastVersion(Lcom/android/camera/settings/SettingsManager;)I
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/android/camera/settings/SettingsManager;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    const-string v0, "pref_strict_upgrade_version"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 120
    const-string v2, "pref_strict_upgrade_version"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_strict_upgrade_version"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 128
    :goto_0
    return v0

    .line 124
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 125
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->convertToInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 128
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/settings/SettingsUpgrader;->getLastVersion(Lcom/android/camera/settings/SettingsManager;)I

    move-result v0

    goto :goto_0
.end method

.method public final upgrade$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6JB1DPGMEPBI7D4KIAAM(Lcom/android/camera/settings/SettingsManager;I)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v1, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x1

    .line 133
    iget-object v3, p0, Lcom/android/camera/settings/AppUpgrader;->context:Landroid/content/Context;

    .line 137
    if-ge p2, v9, :cond_b

    .line 1190
    invoke-virtual {p1}, Lcom/android/camera/settings/SettingsManager;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1191
    const-string v2, "_preferences_camera"

    .line 1192
    invoke-virtual {p1, v2}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1197
    const-string v4, "pref_camera_recordlocation_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1198
    const-string v4, "default_scope"

    .line 1199
    invoke-virtual {p1, v4}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pref_camera_recordlocation_key"

    .line 1198
    invoke-static {v4, v5}, Lcom/android/camera/settings/AppUpgrader;->checkString(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1201
    const-string v4, "pref_camera_recordlocation_key"

    invoke-static {v0, v4}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    .line 1202
    const-string v5, "default_scope"

    const-string v6, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v5, v6, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1207
    :cond_0
    const-string v4, "pref_user_selected_aspect_ratio"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1208
    const-string v4, "pref_user_selected_aspect_ratio"

    .line 1209
    invoke-static {v0, v4}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    .line 1210
    const-string v5, "default_scope"

    const-string v6, "pref_user_selected_aspect_ratio"

    invoke-virtual {p1, v5, v6, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1217
    :cond_1
    const-string v4, "pref_camera_exposure_compensation_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1218
    const-string v4, "pref_camera_exposure_compensation_key"

    .line 1219
    invoke-static {v0, v4}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    .line 1220
    const-string v5, "default_scope"

    const-string v6, "pref_camera_exposure_compensation_key"

    invoke-virtual {p1, v5, v6, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1227
    :cond_2
    const-string v4, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1228
    const-string v4, "pref_camera_first_use_hint_shown_key"

    invoke-static {v0, v4}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    .line 1229
    const-string v5, "default_scope"

    const-string v6, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {p1, v5, v6, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1233
    :cond_3
    const-string v4, "camera.startup_module"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1234
    const-string v4, "camera.startup_module"

    invoke-static {v0, v4}, Lcom/android/camera/settings/AppUpgrader;->removeInteger(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v4

    .line 1235
    const-string v5, "default_scope"

    const-string v6, "camera.startup_module"

    invoke-virtual {p1, v5, v6, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1240
    :cond_4
    const-string v4, "pref_camera_module_last_used_index"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1241
    const-string v4, "pref_camera_module_last_used_index"

    .line 1242
    invoke-static {v0, v4}, Lcom/android/camera/settings/AppUpgrader;->removeInteger(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v4

    .line 1243
    const-string v5, "default_scope"

    const-string v6, "pref_camera_module_last_used_index"

    invoke-virtual {p1, v5, v6, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1251
    :cond_5
    const-string v4, "pref_flash_supported_back_camera"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1252
    const-string v4, "pref_flash_supported_back_camera"

    .line 1253
    invoke-static {v2, v4}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    .line 1254
    if-eqz v4, :cond_6

    .line 1255
    const-string v5, "default_scope"

    const-string v6, "pref_flash_supported_back_camera"

    invoke-virtual {p1, v5, v6, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1263
    :cond_6
    const-string v4, "pref_should_show_refocus_viewer_cling"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1264
    const-string v4, "pref_should_show_refocus_viewer_cling"

    .line 1265
    invoke-static {v0, v4}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    .line 1266
    const-string v5, "default_scope"

    const-string v6, "pref_should_show_refocus_viewer_cling"

    invoke-virtual {p1, v5, v6, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1273
    :cond_7
    const-string v4, "pref_should_show_settings_button_cling"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1274
    const-string v4, "pref_should_show_settings_button_cling"

    .line 1275
    invoke-static {v0, v4}, Lcom/android/camera/settings/AppUpgrader;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 1276
    const-string v4, "default_scope"

    const-string v5, "pref_should_show_settings_button_cling"

    invoke-virtual {p1, v4, v5, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1283
    :cond_8
    const-string v0, "pref_camera_hdr_plus_key"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1284
    const-string v0, "pref_camera_hdr_plus_key"

    invoke-static {v2, v0}, Lcom/android/camera/settings/AppUpgrader;->removeString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1285
    const-string v4, "on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1290
    const-string v0, "default_scope"

    const-string v4, "pref_camera_hdr_plus_key"

    invoke-virtual {p1, v0, v4, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1295
    :cond_9
    const-string v0, "pref_camera_hdr_key"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1296
    const-string v0, "pref_camera_hdr_key"

    invoke-static {v2, v0}, Lcom/android/camera/settings/AppUpgrader;->removeString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1297
    const-string v4, "on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1298
    const-string v0, "default_scope"

    const-string v4, "pref_camera_hdr_key"

    invoke-virtual {p1, v0, v4, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1303
    :cond_a
    const-string v0, "pref_camera_grid_lines"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1304
    const-string v0, "pref_camera_grid_lines"

    invoke-static {v2, v0}, Lcom/android/camera/settings/AppUpgrader;->removeString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1306
    const-string v0, "default_scope"

    const-string v2, "pref_camera_grid_lines"

    invoke-virtual {p1, v0, v2, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    :cond_b
    const/4 v0, 0x2

    if-ge p2, v0, :cond_c

    .line 1316
    const-string v0, "_preferences_camera"

    .line 1317
    invoke-virtual {p1, v0}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1321
    const-string v2, "default_scope"

    const-string v4, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v2, v4}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1324
    const-string v0, "default_scope"

    const-string v2, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1325
    const-string v0, "default_scope"

    const-string v2, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_c
    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_d

    .line 146
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/settings/AppUpgrader;->upgradeCameraSizeSetting(Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/one/OneCamera$Facing;)V

    .line 147
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/settings/AppUpgrader;->upgradeCameraSizeSetting(Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/one/OneCamera$Facing;)V

    .line 152
    const-string v0, "default_scope"

    const-string v2, "camera.startup_module"

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_d
    if-ge p2, v8, :cond_11

    .line 1438
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 1440
    :goto_1
    array-length v2, v4

    if-ge v0, v2, :cond_10

    .line 1441
    const-string v2, "_preferences_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aget-object v2, v4, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1442
    :goto_2
    invoke-virtual {p1, v2}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1443
    aget-object v5, v4, v0

    .line 1444
    invoke-static {v5}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1446
    invoke-static {v2, v5}, Lcom/android/camera/settings/AppUpgrader;->copyPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 1440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1327
    :cond_e
    const-string v2, "pref_camera_recordlocation_key"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1330
    const-string v2, "pref_camera_recordlocation_key"

    invoke-static {v0, v2}, Lcom/android/camera/settings/AppUpgrader;->removeString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1331
    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1332
    const-string v0, "default_scope"

    const-string v2, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v0, v2, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1441
    :cond_f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 157
    :cond_10
    iget-object v0, p0, Lcom/android/camera/settings/AppUpgrader;->moduleManager:Lcom/android/camera/module/ModuleManager;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/camera/settings/AppUpgrader;->upgradeModuleSettingsFiles(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;Lcom/android/camera/module/ModuleManager;)V

    .line 160
    :cond_11
    if-ge p2, v9, :cond_13

    .line 1480
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1482
    const-string v2, "default_scope"

    const-string v3, "pref_camera_module_last_used_index"

    .line 1483
    invoke-virtual {p1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1484
    if-ne v2, v8, :cond_12

    .line 1485
    const-string v2, "default_scope"

    const-string v3, "pref_camera_module_last_used_index"

    invoke-virtual {p1, v2, v3, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1489
    :cond_12
    const-string v2, "default_scope"

    const-string v3, "camera.startup_module"

    .line 1490
    invoke-virtual {p1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1491
    if-ne v2, v8, :cond_13

    .line 1492
    const-string v2, "default_scope"

    const-string v3, "camera.startup_module"

    invoke-virtual {p1, v2, v3, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    :cond_13
    const/4 v0, 0x7

    if-ge p2, v0, :cond_14

    .line 1507
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus5()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1511
    const-string v0, "default_scope"

    const-string v2, "pref_camera_picturesize_back_key"

    .line 1512
    invoke-virtual {p1, v0, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1513
    const-string v2, "1836x3264"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1514
    sget-object v0, Lcom/android/camera/settings/AppUpgrader;->TAG:Ljava/lang/String;

    const-string v2, "Swapped dimensions on N5 16:9 resolution."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    const-string v0, "default_scope"

    const-string v2, "pref_camera_picturesize_back_key"

    const-string v3, "3264x1836"

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_14
    const/16 v0, 0x8

    if-ge p2, v0, :cond_15

    .line 1529
    const-string v0, "default_scope"

    const-string v2, "pref_camera_hdr_plus_key"

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1533
    const-string v0, "default_scope"

    const-string v2, "pref_camera_hdr_plus_key"

    .line 2149
    invoke-virtual {p1, v0, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2150
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2151
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1535
    :goto_3
    if-eqz v0, :cond_15

    .line 1537
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    .line 1540
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "on"

    .line 1537
    :goto_4
    invoke-virtual {p1, v2, v3, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_15
    const/16 v0, 0x9

    if-ge p2, v0, :cond_16

    .line 2550
    const-string v0, "default_scope"

    const-string v2, "pref_camera_hdr_plus_key"

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2551
    const-string v0, "default_scope"

    const-string v2, "pref_camera_hdr_plus_key"

    .line 2552
    invoke-virtual {p1, v0, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2558
    if-eqz v0, :cond_16

    const-string v2, "on"

    if-eq v0, v2, :cond_16

    const-string v2, "off"

    if-eq v0, v2, :cond_16

    const-string v2, "auto"

    if-eq v0, v2, :cond_16

    .line 2562
    const-string v0, "default_scope"

    const-string v2, "pref_camera_hdr_plus_key"

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_16
    const/16 v0, 0xa

    if-ge p2, v0, :cond_17

    .line 2572
    const-string v0, "default_scope"

    const-string v2, "pref_camera_hdr_plus_raw_out_key"

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2573
    const-string v0, "default_scope"

    const-string v2, "pref_camera_hdr_plus_raw_out_key"

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 179
    :cond_17
    return-void

    .line 2152
    :cond_18
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2153
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 2155
    :cond_19
    const/4 v0, 0x0

    goto :goto_3

    .line 1540
    :cond_1a
    const-string v0, "off"

    goto :goto_4
.end method
