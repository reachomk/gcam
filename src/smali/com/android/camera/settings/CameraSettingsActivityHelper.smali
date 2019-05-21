.class public final Lcom/android/camera/settings/CameraSettingsActivityHelper;
.super Ljava/lang/Object;
.source "CameraSettingsActivityHelper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "CamSetActHelper"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static addAdditionalPreferences(Landroid/preference/PreferenceFragment;Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/app/ActivityManager;)V
    .locals 5

    .prologue
    .line 34
    const/high16 v0, 0x7f080000

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 36
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 37
    const-string v0, "pref_category_resolution_camera"

    .line 39
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 44
    const-string v1, "pref_lightcycle_quality_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 45
    invoke-static {p1, p2, p3}, Lcom/android/camera/util/PhotoSphereHelper;->hasLightCycleCapture(Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/app/ActivityManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1087
    if-eqz v1, :cond_0

    .line 1090
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1091
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 50
    :cond_0
    :goto_0
    const-string v1, "_category_refocus_quality"

    .line 51
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 52
    invoke-static {p1, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->hasRefocusCapture(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1096
    if-eqz v1, :cond_3

    .line 1100
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1101
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 1102
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1103
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 57
    :cond_3
    return-void
.end method

.method public static onSizesLoaded(Landroid/preference/PreferenceFragment;Ljava/util/List;Lcom/android/camera/settings/ListPreferenceFiller;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceFragment;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/settings/ListPreferenceFiller;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "pref_refocus_quality_key"

    .line 78
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 80
    if-eqz v0, :cond_3

    .line 1113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1122
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v3

    .line 1123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    .line 1124
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v5

    cmpl-float v5, v5, v3

    if-nez v5, :cond_1

    .line 1125
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 81
    :cond_2
    invoke-virtual {p2, v2, v0}, Lcom/android/camera/settings/ListPreferenceFiller;->fill(Ljava/util/List;Landroid/preference/ListPreference;)V

    .line 83
    :cond_3
    return-void
.end method
