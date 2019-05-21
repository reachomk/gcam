.class public final Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "CameraSettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/CameraSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraSettingsFragment"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

.field apiHelper:Lcom/android/camera/util/ApiHelper;

.field private camcorderProfileNames:[Ljava/lang/String;

.field private getSubPrefAsRoot:Z

.field private hideAdvancedScreen:Z

.field private infos:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

.field private isSmartBurstSupported:Z

.field private locationPreference:Lcom/android/camera/settings/ManagedSwitchPreference;

.field megaPixelFormat:Ljava/text/NumberFormat;

.field pictureSizeLoader:Lcom/android/camera/settings/PictureSizeLoader;

.field private pictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

.field private prefKey:Ljava/lang/String;

.field private stabilizationPreference:Lcom/android/camera/settings/ManagedSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    const-string v0, "SettingsFragment"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getSubPrefAsRoot:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->turnOffLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->requestPermission()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;Ljava/util/List;Landroid/preference/ListPreference;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEntriesForSelection(Ljava/util/List;Landroid/preference/ListPreference;)V

    return-void
.end method

.method private final fillEntriesAndSummaries(Landroid/preference/PreferenceGroup;)V
    .locals 4

    .prologue
    .line 476
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 477
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 478
    instance-of v0, v1, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 479
    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->fillEntriesAndSummaries(Landroid/preference/PreferenceGroup;)V

    .line 2558
    :cond_0
    instance-of v0, v1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 2562
    check-cast v1, Landroid/preference/ListPreference;

    .line 2563
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_camera_picturesize_back_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2564
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->pictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v0, v0, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->backCameraSizes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEntriesForSelection(Ljava/util/List;Landroid/preference/ListPreference;)V

    .line 476
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2565
    :cond_2
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_camera_picturesize_front_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2566
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->pictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v0, v0, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->frontCameraSizes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEntriesForSelection(Ljava/util/List;Landroid/preference/ListPreference;)V

    goto :goto_1

    .line 2567
    :cond_3
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_video_quality_back_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2568
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->pictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v0, v0, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->videoQualitiesBack:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEntriesForSelection(Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;Landroid/preference/ListPreference;)V

    goto :goto_1

    .line 2569
    :cond_4
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_video_quality_front_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2570
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->pictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v0, v0, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->videoQualitiesFront:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEntriesForSelection(Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;Landroid/preference/ListPreference;)V

    goto :goto_1

    .line 483
    :cond_5
    return-void
.end method

.method private final findByKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 438
    instance-of v0, p1, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    check-cast p1, Landroid/preference/PreferenceScreen;

    .line 450
    :goto_0
    return-object p1

    .line 441
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 442
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 443
    instance-of v2, v0, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_1

    .line 444
    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findByKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 446
    goto :goto_0

    .line 441
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 450
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private final handleStabilizationEnabledState()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 531
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->stabilizationPreference:Lcom/android/camera/settings/ManagedSwitchPreference;

    if-eqz v0, :cond_1

    .line 3541
    const-string v0, "pref_video_quality_back_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 3542
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3543
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3546
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3547
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 532
    :goto_0
    if-eqz v0, :cond_4

    .line 533
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->stabilizationPreference:Lcom/android/camera/settings/ManagedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/camera/settings/ManagedSwitchPreference;->setEnabled(Z)V

    .line 538
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 3547
    goto :goto_0

    :cond_3
    move v0, v2

    .line 3550
    goto :goto_0

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->stabilizationPreference:Lcom/android/camera/settings/ManagedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/ManagedSwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private final hasLocationPermission()Z
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 491
    if-nez p1, :cond_1

    .line 492
    sget-object v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "attempting to delete from null preference group"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_0
    :goto_0
    return v2

    .line 495
    :cond_1
    if-nez p2, :cond_2

    .line 496
    sget-object v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "attempting to delete null preference"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_2
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    .line 501
    goto :goto_0

    :cond_3
    move v1, v2

    .line 504
    :goto_1
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 505
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 506
    instance-of v4, v0, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_4

    .line 507
    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    .line 508
    goto :goto_0

    .line 504
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private final requestPermission()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 312
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->hasLocationPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 317
    :cond_0
    return-void
.end method

.method private final setEntriesForSelection(Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;Landroid/preference/ListPreference;)V
    .locals 3

    .prologue
    .line 606
    if-nez p1, :cond_0

    .line 621
    :goto_0
    return-void

    .line 612
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 613
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->camcorderProfileNames:[Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->large:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget v1, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    iget v2, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->large:I

    if-eq v1, v2, :cond_1

    .line 615
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->camcorderProfileNames:[Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_1
    iget v1, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->small:I

    iget v2, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    if-eq v1, v2, :cond_2

    .line 618
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->camcorderProfileNames:[Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->small:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private final setEntriesForSelection(Ljava/util/List;Landroid/preference/ListPreference;)V
    .locals 12
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
    const/4 v2, 0x0

    .line 582
    if-nez p1, :cond_0

    .line 595
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 587
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    .line 588
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 589
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 3641
    invoke-static {v0}, Lcom/android/camera/settings/ResolutionUtil;->getApproximateSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v5

    .line 3642
    iget-object v6, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->megaPixelFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-double v8, v7

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 3643
    invoke-static {v5}, Lcom/android/camera/settings/ResolutionUtil;->aspectRatioNumerator(Lcom/android/camera/util/Size;)I

    move-result v7

    .line 3644
    invoke-static {v5}, Lcom/android/camera/settings/ResolutionUtil;->aspectRatioDenominator(Lcom/android/camera/util/Size;)I

    move-result v5

    .line 3646
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01d2

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 3649
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v2

    const/4 v7, 0x1

    .line 3650
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v7

    const/4 v5, 0x2

    aput-object v6, v10, v5

    .line 3647
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 590
    aput-object v5, v3, v1

    .line 591
    invoke-static {v0}, Lcom/android/camera/util/Size;->toSettingString(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 588
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 593
    :cond_1
    invoke-virtual {p2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 594
    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private final setPreferenceScreenIntent(Landroid/preference/PreferenceScreen;)V
    .locals 3

    .prologue
    .line 409
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    const-string v1, "pref_screen_extra"

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 412
    return-void
.end method

.method private final turnOffLocation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->locationPreference:Lcom/android/camera/settings/ManagedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/ManagedSwitchPreference;->persistBoolean(Z)Z

    .line 308
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->locationPreference:Lcom/android/camera/settings/ManagedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/ManagedSwitchPreference;->setChecked(Z)V

    .line 309
    return-void
.end method


# virtual methods
.method public final getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    .line 424
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 425
    iget-boolean v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getSubPrefAsRoot:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->prefKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 430
    :cond_0
    return-object v0

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->prefKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findByKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 429
    if-nez v0, :cond_0

    .line 432
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->prefKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 198
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/HasCameraAppComponent;

    invoke-interface {v0}, Lcom/android/camera/app/HasCameraAppComponent;->component$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2S3G5T1M2RB5E9GK2S3G8DNMQS3FDPIMST1R()Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/one/v2/OneCameraFactoryProvider;->inject(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V

    .line 205
    iput-boolean v4, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->isSmartBurstSupported:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 207
    if-eqz v9, :cond_8

    .line 208
    const-string v0, "pref_screen_extra"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->prefKey:Ljava/lang/String;

    .line 209
    const-string v0, "is_video_stabilization_supported"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 210
    const-string v0, "is_advice_module_supported"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 211
    const-string v0, "is_experiemental_supported"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 212
    const-string v0, "is_smartburst_supported"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->isSmartBurstSupported:Z

    .line 213
    const-string v0, "is_hybrid_burst_supported"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v6, v3

    move v7, v5

    move v3, v0

    move v5, v2

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 216
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->addPreferencesFromResource(I)V

    .line 218
    const-string v0, "pref_category_resolution_camera"

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 221
    iget-boolean v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->isSmartBurstSupported:Z

    if-nez v2, :cond_0

    .line 222
    const-string v2, "pref_category_smartburst"

    .line 223
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 224
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_0
    if-eqz v3, :cond_1

    .line 229
    const-string v2, "pref_category_smartburst"

    .line 230
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 231
    const-string v3, "pref_smartburst_classicburst"

    .line 232
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 233
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    :cond_1
    if-nez v6, :cond_7

    move v2, v8

    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->hideAdvancedScreen:Z

    .line 238
    iget-boolean v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->hideAdvancedScreen:Z

    if-eqz v2, :cond_2

    .line 239
    const-string v2, "pref_category_advanced"

    .line 240
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 241
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    :cond_2
    if-nez v5, :cond_3

    .line 245
    const-string v2, "pref_category_experimental"

    .line 246
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 247
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    :cond_3
    const-string v0, "pref_video_stabilization_key"

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/ManagedSwitchPreference;

    iput-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->stabilizationPreference:Lcom/android/camera/settings/ManagedSwitchPreference;

    .line 252
    const-string v0, "pref_category_resolution_video"

    .line 253
    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 257
    if-nez v7, :cond_4

    .line 258
    iget-object v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->stabilizationPreference:Lcom/android/camera/settings/ManagedSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    :cond_4
    iput-boolean v4, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getSubPrefAsRoot:Z

    .line 264
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    .line 267
    invoke-virtual {v0}, Lcom/google/android/apps/camera/inject/app/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    .line 268
    invoke-virtual {v2}, Lcom/google/android/apps/camera/inject/app/AndroidServices;->provideActivityManager()Landroid/app/ActivityManager;

    move-result-object v2

    .line 264
    invoke-static {p0, v10, v0, v2}, Lcom/android/camera/settings/CameraSettingsActivityHelper;->addAdditionalPreferences(Landroid/preference/PreferenceFragment;Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/app/ActivityManager;)V

    .line 269
    iput-boolean v8, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getSubPrefAsRoot:Z

    .line 271
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100039

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->camcorderProfileNames:[Ljava/lang/String;

    .line 272
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1$9HHMUR9FC5N68SJFD5I2UPBO5THM2RB5E9GJ4BRGDTP78OB2D5M6IT3P5T1M2RB5E9GK2PR5DPQ4COB3EHNN4U948DGMQPBIC50N0Q9R:I

    .line 273
    invoke-static {v10, v0}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->getAndroidCameraAgent$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GB7CLN78HJ1CDQ6USJP4H1M2RB5E9GK2S397CKKOORFDKNM2RJ4E9NMIP1FCLS2UOR1DLIN4O9I5TO6USJKC5H6IR39EHSIUGR1DLIN4OA1CTIMST1R(Landroid/content/Context;I)Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->infos:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    .line 276
    if-eqz v9, :cond_5

    .line 277
    const-string v0, "pref_open_setting_page"

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    if-eqz v2, :cond_5

    .line 1397
    const-string v0, "prefscreen_top"

    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1398
    invoke-virtual {p0, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1399
    if-eqz v2, :cond_5

    .line 1400
    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    .line 1401
    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 282
    :cond_5
    const-string v0, "pref_camera_recordlocation_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/ManagedSwitchPreference;

    iput-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->locationPreference:Lcom/android/camera/settings/ManagedSwitchPreference;

    .line 283
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->locationPreference:Lcom/android/camera/settings/ManagedSwitchPreference;

    new-instance v1, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$1;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/ManagedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 296
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 297
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 299
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 300
    if-eqz v0, :cond_6

    .line 301
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->turnOffLocation()V

    .line 302
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->locationPreference:Lcom/android/camera/settings/ManagedSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    :cond_6
    return-void

    :cond_7
    move v2, v4

    .line 237
    goto/16 :goto_1

    :cond_8
    move v3, v4

    move v5, v4

    move v6, v4

    move v7, v4

    goto/16 :goto_0
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 517
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 518
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 519
    return-void
.end method

.method public final onResume()V
    .locals 4

    .prologue
    .line 326
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 327
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1628
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->infos:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_5

    .line 1629
    sget-object v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "null deviceInfo, cannot display resolution sizes"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->pictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v0, v0, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->backCameraSizes:Ljava/util/List;

    new-instance v1, Lcom/android/camera/settings/ListPreferenceFiller;

    invoke-direct {v1, p0}, Lcom/android/camera/settings/ListPreferenceFiller;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V

    invoke-static {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivityHelper;->onSizesLoaded(Landroid/preference/PreferenceFragment;Ljava/util/List;Lcom/android/camera/settings/ListPreferenceFiller;)V

    .line 2459
    const-string v0, "pref_category_resolution_camera"

    .line 2460
    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 2461
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->pictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v1, v1, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->backCameraSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2462
    const-string v1, "pref_camera_picturesize_back_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 2463
    const-string v1, "pref_video_quality_back_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 2465
    :cond_0
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->pictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v1, v1, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->frontCameraSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2466
    const-string v1, "pref_camera_picturesize_front_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 2467
    const-string v1, "pref_video_quality_front_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 348
    :cond_1
    const-string v0, "pref_category_resolution_camera"

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 350
    invoke-direct {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->fillEntriesAndSummaries(Landroid/preference/PreferenceGroup;)V

    .line 351
    const-string v1, "pref_category_resolution_video"

    .line 352
    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 353
    invoke-direct {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->fillEntriesAndSummaries(Landroid/preference/PreferenceGroup;)V

    .line 355
    const-string v1, "pref_category_advanced"

    .line 356
    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 358
    iget-boolean v3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->hideAdvancedScreen:Z

    if-nez v3, :cond_2

    .line 359
    invoke-direct {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setPreferenceScreenIntent(Landroid/preference/PreferenceScreen;)V

    .line 362
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->isSmartBurstSupported:Z

    if-eqz v1, :cond_3

    .line 363
    const-string v1, "pref_category_smartburst"

    .line 364
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 365
    invoke-direct {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setPreferenceScreenIntent(Landroid/preference/PreferenceScreen;)V

    .line 368
    :cond_3
    const-string v0, "pref_launch_help"

    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$3;

    invoke-direct {v1, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 378
    const-string v0, "pref_launch_feedback"

    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 379
    new-instance v1, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$4;

    invoke-direct {v1, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 390
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->hasLocationPermission()Z

    move-result v0

    if-nez v0, :cond_4

    .line 391
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->turnOffLocation()V

    .line 393
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->handleStabilizationEnabledState()V

    .line 394
    return-void

    .line 1632
    :cond_5
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->pictureSizeLoader:Lcom/android/camera/settings/PictureSizeLoader;

    invoke-virtual {v0}, Lcom/android/camera/settings/PictureSizeLoader;->computePictureSizes()Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->pictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    goto/16 :goto_0
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 523
    const-string v0, "pref_video_quality_back_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->handleStabilizationEnabledState()V

    .line 526
    :cond_0
    return-void
.end method
