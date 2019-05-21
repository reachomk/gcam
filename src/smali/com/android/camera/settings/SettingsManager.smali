.class public final Lcom/android/camera/settings/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private currentOpenedScope:Ljava/lang/String;

.field private customPreferences:Landroid/content/SharedPreferences;

.field private final defaultPreferences:Landroid/content/SharedPreferences;

.field private final defaultsStore:Lcom/android/camera/settings/DefaultsStore;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final packageName:Ljava/lang/String;

.field private final sharedPreferenceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "SettingsManager"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/settings/SettingsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/camera/settings/DefaultsStore;

    invoke-direct {v0}, Lcom/android/camera/settings/DefaultsStore;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->defaultsStore:Lcom/android/camera/settings/DefaultsStore;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->currentOpenedScope:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->listeners:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->sharedPreferenceListeners:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lcom/android/camera/settings/SettingsManager;->context:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->packageName:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/android/camera/settings/SettingsManager;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 102
    return-void
.end method

.method static convert(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static convert(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method static convertToInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 577
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getBooleanDefault(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    invoke-static {p1}, Lcom/android/camera/settings/DefaultsStore;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    const-string v0, "_preferences_camera_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getIntegerDefault(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    invoke-static {p1}, Lcom/android/camera/settings/DefaultsStore;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    const-string v0, "_preferences_camera_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 5

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    const-string v0, "default_scope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->defaultPreferences:Landroid/content/SharedPreferences;

    monitor-exit v1

    .line 262
    :goto_0
    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->currentOpenedScope:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->customPreferences:Landroid/content/SharedPreferences;

    monitor-exit v1

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 258
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->customPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    .line 259
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->customPreferences:Landroid/content/SharedPreferences;

    .line 2145
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2146
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->sharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 2147
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_1

    .line 2150
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2149
    :cond_2
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->currentOpenedScope:Ljava/lang/String;

    .line 2150
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 261
    :cond_3
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/camera/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/SettingsManager;->customPreferences:Landroid/content/SharedPreferences;

    .line 262
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->customPreferences:Landroid/content/SharedPreferences;

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 343
    :try_start_1
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p3

    :try_start_2
    monitor-exit v1

    .line 347
    :goto_0
    return-object p3

    .line 344
    :catch_0
    move-exception v2

    .line 345
    sget-object v3, Lcom/android/camera/settings/SettingsManager;->TAG:Ljava/lang/String;

    const-string v4, "existing preference with invalid type, removing and returning default"

    invoke-static {v3, v4, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 347
    monitor-exit v1

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private getStringDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    invoke-static {p1}, Lcom/android/camera/settings/DefaultsStore;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V
    .locals 5

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    monitor-exit v1

    .line 205
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    new-instance v0, Lcom/android/camera/settings/SettingsManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/settings/SettingsManager$1;-><init>(Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 198
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->sharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 201
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->customPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->customPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 204
    :cond_1
    sget-object v0, Lcom/android/camera/settings/SettingsManager;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->listeners:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "listeners: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 403
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/settings/SettingsManager;->getBooleanDefault(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 390
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    if-eqz p3, :cond_0

    :try_start_0
    const-string v0, "1"

    .line 392
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2588
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 393
    :goto_1
    monitor-exit v1

    return v0

    .line 391
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 2588
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getDefaultPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->defaultPreferences:Landroid/content/SharedPreferences;

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_0
    invoke-static {p2}, Lcom/android/camera/settings/DefaultsStore;->getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 421
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No possible values for scope="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 425
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 427
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 428
    monitor-exit v1

    return v0

    .line 426
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Current value for scope="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in list of possible values"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final getInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/settings/SettingsManager;->getIntegerDefault(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I
    .locals 2

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2577
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 371
    monitor-exit v1

    return v0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 532
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 5

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 126
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->sharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 127
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 124
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    iput-object p1, p0, Lcom/android/camera/settings/SettingsManager;->currentOpenedScope:Ljava/lang/String;

    .line 130
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public final remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 553
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 555
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V
    .locals 4

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    if-nez p1, :cond_0

    .line 215
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 218
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    monitor-exit v1

    .line 233
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 223
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager;->sharedPreferenceListeners:Ljava/util/List;

    .line 226
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 227
    iget-object v3, p0, Lcom/android/camera/settings/SettingsManager;->sharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 228
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 230
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->customPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/android/camera/settings/SettingsManager;->customPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 233
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 3566
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 464
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 465
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 484
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_0
    invoke-static {p3}, Lcom/android/camera/settings/SettingsManager;->convert(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setDefaults(Ljava/lang/String;I[I)V
    .locals 5

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    array-length v0, p3

    new-array v3, v0, [Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    :goto_0
    array-length v4, p3

    if-ge v0, v4, :cond_0

    .line 287
    aget v4, p3, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/android/camera/settings/DefaultsStore;->storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 290
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/camera/settings/DefaultsStore;->storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 274
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setDefaults(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "1"

    .line 301
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    .line 302
    invoke-static {p1, v0, v2}, Lcom/android/camera/settings/DefaultsStore;->storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 303
    monitor-exit v1

    return-void

    .line 300
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setToDefault(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 494
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/camera/settings/SettingsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    invoke-static {p2}, Lcom/android/camera/settings/DefaultsStore;->getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 513
    array-length v2, v0

    if-nez v2, :cond_0

    .line 514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No possible values for scope="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 517
    :cond_0
    if-ltz p3, :cond_1

    :try_start_1
    array-length v2, v0

    if-ge p3, v2, :cond_1

    .line 518
    aget-object v0, v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    monitor-exit v1

    return-void

    .line 520
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "For possible values of scope="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
