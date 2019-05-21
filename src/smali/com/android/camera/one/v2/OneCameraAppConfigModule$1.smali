.class final Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;
.super Ljava/lang/Object;
.source "OneCameraAppConfigModule.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraAppConfigModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/android/camera/one/OneCameraCharacteristics;",
        "Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$apiHelper:Lcom/android/camera/util/ApiHelper;

.field private synthetic val$gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/util/ApiHelper;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;->val$gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;->val$apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/16 v3, 0x23

    .line 91
    check-cast p1, Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1096
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;->val$gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 1097
    invoke-static {p1, v0}, Lcom/android/camera/one/v2/OneCameraAppConfigModule;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4OA3D1GN4OB3EHIN4QBJEHKM6SPR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3MAACCDNMQBR7DTNMER355THMURBDDTN2UOJ1EDIIUJRGEHKMURJ1DGTG____(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)Lcom/google/common/base/Optional;

    move-result-object v1

    .line 1098
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraAppConfigModule;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera support level override: "

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    .line 1162
    :goto_1
    return-object v0

    .line 1099
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;->val$apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;->val$apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1105
    :cond_2
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->NEXUS_2015:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_1

    .line 1109
    :cond_3
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;->val$apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;->val$apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1110
    :cond_4
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->NEXUS_2015:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_1

    .line 1113
    :cond_5
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1114
    invoke-interface {p1, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1119
    if-nez v0, :cond_6

    .line 1120
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraAppConfigModule;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device does not report supported hardware level."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_1

    .line 1126
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1127
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->LEGACY_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_1

    .line 1136
    :cond_7
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;->val$apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus5()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1137
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLMr1OrHigher()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;->val$apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus6()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;->val$apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1138
    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus9()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1139
    :cond_9
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_1

    .line 1143
    :cond_a
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraAppConfigModule$1;->val$apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 2135
    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexusMMR1CapableDevice()Z

    move-result v1

    .line 1143
    if-eqz v1, :cond_c

    .line 1144
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 1150
    invoke-interface {p1, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v0

    .line 1152
    invoke-interface {p1, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedReprocessingSizes(I)Ljava/util/List;

    move-result-object v1

    .line 1153
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1154
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->ZSL_REPROCESSING:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    goto/16 :goto_1

    .line 1156
    :cond_b
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->ZSL:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    goto/16 :goto_1

    .line 1161
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_d

    .line 1162
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    goto/16 :goto_1

    .line 1167
    :cond_d
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraAppConfigModule;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown device or support level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    goto/16 :goto_1
.end method
