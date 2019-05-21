.class public abstract Lcom/android/camera/settings/SettingsUpgrader;
.super Ljava/lang/Object;
.source "SettingsUpgrader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final targetVersion:I

.field private final versionKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "SettingsUpgrader"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/settings/SettingsUpgrader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/settings/SettingsUpgrader;->versionKey:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/android/camera/settings/SettingsUpgrader;->targetVersion:I

    .line 29
    return-void
.end method

.method protected static checkString(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lcom/android/camera/settings/SettingsUpgrader;->TAG:Ljava/lang/String;

    const-string v2, "error reading old value"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 80
    .line 82
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 86
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    return v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    sget-object v2, Lcom/android/camera/settings/SettingsUpgrader;->TAG:Ljava/lang/String;

    const-string v3, "error reading old value, removing and returning default"

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static removeInteger(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 113
    .line 115
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 119
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    return v0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    sget-object v2, Lcom/android/camera/settings/SettingsUpgrader;->TAG:Ljava/lang/String;

    const-string v3, "error reading old value, removing and returning default"

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static removeString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 132
    .line 134
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-object v0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    sget-object v2, Lcom/android/camera/settings/SettingsUpgrader;->TAG:Ljava/lang/String;

    const-string v3, "error reading old value, removing and returning default"

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected getLastVersion(Lcom/android/camera/settings/SettingsManager;)I
    .locals 2

    .prologue
    .line 68
    const-string v0, "default_scope"

    iget-object v1, p0, Lcom/android/camera/settings/SettingsUpgrader;->versionKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final upgrade(Lcom/android/camera/settings/SettingsManager;)V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/settings/SettingsUpgrader;->getLastVersion(Lcom/android/camera/settings/SettingsManager;)I

    move-result v0

    .line 38
    iget v1, p0, Lcom/android/camera/settings/SettingsUpgrader;->targetVersion:I

    if-eq v0, v1, :cond_0

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/settings/SettingsUpgrader;->upgrade$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6JB1DPGMEPBI7D4KIAAM(Lcom/android/camera/settings/SettingsManager;I)V

    .line 41
    :cond_0
    const-string v0, "default_scope"

    iget-object v1, p0, Lcom/android/camera/settings/SettingsUpgrader;->versionKey:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/settings/SettingsUpgrader;->targetVersion:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    sget-object v1, Lcom/android/camera/settings/SettingsUpgrader;->TAG:Ljava/lang/String;

    const-string v2, "exception during upgrade"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    throw v0
.end method

.method protected abstract upgrade$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6JB1DPGMEPBI7D4KIAAM(Lcom/android/camera/settings/SettingsManager;I)V
.end method
