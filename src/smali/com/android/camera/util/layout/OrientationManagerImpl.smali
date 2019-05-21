.class final Lcom/android/camera/util/layout/OrientationManagerImpl;
.super Ljava/lang/Object;
.source "OrientationManagerImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/android/camera/burst/OrientationLockController;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStart;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStop;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activityOrientation:Lcom/android/camera/util/activity/RequestedOrientation;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final deviceOrientation:Lcom/android/camera/util/deviceorientation/DeviceOrientation;

.field private isAppLocked:Z

.field private final isDefaultToPortrait:Z

.field private final logger:Lcom/android/camera/debug/Logger;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "OrientMgrImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/layout/OrientationManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/util/activity/RequestedOrientation;Landroid/content/ContentResolver;Lcom/android/camera/util/deviceorientation/DeviceOrientation;Landroid/view/WindowManager;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v2, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->isAppLocked:Z

    .line 51
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/activity/RequestedOrientation;

    iput-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->activityOrientation:Lcom/android/camera/util/activity/RequestedOrientation;

    .line 52
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->contentResolver:Landroid/content/ContentResolver;

    .line 53
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    iput-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->deviceOrientation:Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    .line 54
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->windowManager:Landroid/view/WindowManager;

    .line 1205
    iget-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1206
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1207
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1208
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 1209
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v3}, Lcom/android/camera/util/Size;-><init>(Landroid/graphics/Point;)V

    .line 1210
    if-eq v4, v1, :cond_0

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1

    .line 1211
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->transpose()Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1213
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    if-gt v3, v0, :cond_2

    move v0, v1

    .line 56
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->isDefaultToPortrait:Z

    .line 57
    sget-object v0, Lcom/android/camera/util/layout/OrientationManagerImpl;->TAG:Ljava/lang/String;

    invoke-interface {p5, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    .line 58
    return-void

    :cond_2
    move v0, v2

    .line 1213
    goto :goto_0
.end method

.method private final computeNaturalOrientation(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/util/layout/NaturalOrientation;
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->isDefaultToPortrait:Z

    if-eqz v0, :cond_3

    .line 148
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-ne p1, v0, :cond_0

    .line 149
    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->PORTRAIT:Lcom/android/camera/util/layout/NaturalOrientation;

    .line 170
    :goto_0
    return-object v0

    .line 150
    :cond_0
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_90:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-ne p1, v0, :cond_1

    .line 151
    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE:Lcom/android/camera/util/layout/NaturalOrientation;

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_180:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-ne p1, v0, :cond_2

    .line 153
    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->PORTRAIT_REVERSED:Lcom/android/camera/util/layout/NaturalOrientation;

    goto :goto_0

    .line 155
    :cond_2
    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE_REVERSED:Lcom/android/camera/util/layout/NaturalOrientation;

    goto :goto_0

    .line 163
    :cond_3
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-ne p1, v0, :cond_4

    .line 164
    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE:Lcom/android/camera/util/layout/NaturalOrientation;

    goto :goto_0

    .line 165
    :cond_4
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_90:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-ne p1, v0, :cond_5

    .line 166
    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->PORTRAIT:Lcom/android/camera/util/layout/NaturalOrientation;

    goto :goto_0

    .line 167
    :cond_5
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_180:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-ne p1, v0, :cond_6

    .line 168
    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE_REVERSED:Lcom/android/camera/util/layout/NaturalOrientation;

    goto :goto_0

    .line 170
    :cond_6
    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->PORTRAIT_REVERSED:Lcom/android/camera/util/layout/NaturalOrientation;

    goto :goto_0
.end method

.method private final isRotationUserLocked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->contentResolver:Landroid/content/ContentResolver;

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final addDeviceOrientationListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->deviceOrientation:Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    invoke-interface {v0, p1}, Lcom/android/camera/util/deviceorientation/DeviceOrientation;->addListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V

    .line 73
    return-void
.end method

.method public final deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->deviceOrientation:Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    invoke-interface {v0}, Lcom/android/camera/util/deviceorientation/DeviceOrientation;->deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    return-object v0
.end method

.method public final isDefaultOrientationPortrait()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->isDefaultToPortrait:Z

    return v0
.end method

.method public final lockOrientation()V
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->isAppLocked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/util/layout/OrientationManagerImpl;->isRotationUserLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->isAppLocked:Z

    .line 106
    iget-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->activityOrientation:Lcom/android/camera/util/activity/RequestedOrientation;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/camera/util/activity/RequestedOrientation;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public final naturalDeviceOrientation()Lcom/android/camera/util/layout/NaturalOrientation;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/camera/util/layout/OrientationManagerImpl;->deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/util/layout/OrientationManagerImpl;->computeNaturalOrientation(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v0

    return-object v0
.end method

.method public final naturalUiOrientation()Lcom/android/camera/util/layout/NaturalOrientation;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/camera/util/layout/OrientationManagerImpl;->uiOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/util/layout/OrientationManagerImpl;->computeNaturalOrientation(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v0

    return-object v0
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->deviceOrientation:Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    invoke-interface {v0}, Lcom/android/camera/util/deviceorientation/DeviceOrientation;->enable()V

    .line 63
    return-void
.end method

.method public final onStop()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->deviceOrientation:Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    invoke-interface {v0}, Lcom/android/camera/util/deviceorientation/DeviceOrientation;->disable()V

    .line 68
    return-void
.end method

.method public final removeDeviceOrientationListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->deviceOrientation:Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    invoke-interface {v0, p1}, Lcom/android/camera/util/deviceorientation/DeviceOrientation;->removeListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V

    .line 78
    return-void
.end method

.method public final uiOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;
    .locals 1

    .prologue
    .line 92
    .line 2181
    iget-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2182
    packed-switch v0, :pswitch_data_0

    .line 2192
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 2190
    :goto_0
    return-object v0

    .line 2184
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->fromCcw(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    goto :goto_0

    .line 2186
    :pswitch_1
    const/16 v0, 0x5a

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->fromCcw(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    goto :goto_0

    .line 2188
    :pswitch_2
    const/16 v0, 0xb4

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->fromCcw(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    goto :goto_0

    .line 2190
    :pswitch_3
    const/16 v0, 0x10e

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->fromCcw(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    goto :goto_0

    .line 2182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final unlockOrientation()V
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->isAppLocked:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/util/layout/OrientationManagerImpl;->isRotationUserLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->isAppLocked:Z

    .line 115
    iget-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Unlocked Orientation"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/util/layout/OrientationManagerImpl;->activityOrientation:Lcom/android/camera/util/activity/RequestedOrientation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/util/activity/RequestedOrientation;->setRequestedOrientation(I)V

    goto :goto_0
.end method
