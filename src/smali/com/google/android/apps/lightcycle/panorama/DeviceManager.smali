.class public final Lcom/google/android/apps/lightcycle/panorama/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;
    }
.end annotation


# static fields
.field private static final ACTIVE_CONFIG:Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

.field private static final DEVICE_CONFIG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_DEVICE_SUPPORTED:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, -0x40800000    # -1.0f

    const v3, 0x4262c28f    # 56.69f

    const/4 v4, 0x0

    .line 39
    const-string v0, "DeviceManager"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    .line 66
    const-string v0, "LGE"

    const-string v1, "hammerhead"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v5, v6}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FZ)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V

    .line 68
    const-string v0, "LGE"

    const-string v1, "g3"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v5, v6}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FZ)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V

    .line 69
    const-string v0, "LGE"

    const-string v1, "b1"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v5, v6}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FZ)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V

    .line 70
    const-string v0, "LGE"

    const-string v1, "b1w"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v5, v6}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FZ)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V

    .line 74
    const-string v0, "HTC"

    const-string v1, "m7"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FZ)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V

    .line 75
    const-string v0, "HTC"

    const-string v1, "m7cdtu"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FZ)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V

    .line 76
    const-string v0, "HTC"

    const-string v1, "m7cdug"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FZ)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V

    .line 77
    const-string v0, "HTC"

    const-string v1, "m7cdwg"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FZ)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V

    .line 78
    const-string v0, "HTC"

    const-string v1, "m7wls"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FZ)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V

    .line 79
    const-string v0, "HTC"

    const-string v1, "m7wlv"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FZ)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V

    .line 82
    const-string v0, "motorola"

    const-string v1, "ghost"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    const/high16 v3, 0x42540000    # 53.0f

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FZ)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V

    .line 85
    const-string v0, "Default"

    const-string v1, ""

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v5, v4}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FZ)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V

    .line 1206
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Brand : \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1207
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Manufacturer : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1208
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Device : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Model : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1210
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Hardware : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1211
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Product : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1212
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Board : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1213
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Build : \n"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    sput-boolean v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->IS_DEVICE_SUPPORTED:Z

    .line 2196
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getDeviceKey()Ljava/lang/String;

    move-result-object v0

    .line 2197
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    .line 2198
    if-eqz v0, :cond_1

    .line 92
    :goto_1
    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->ACTIVE_CONFIG:Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    return-void

    .line 1213
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2201
    :cond_1
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "Default"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    goto :goto_1
.end method

.method private static addDevice(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;)V
    .locals 4

    .prologue
    .line 179
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCameraFieldOfViewDegrees(F)F
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->ACTIVE_CONFIG:Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    iget v0, v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;->cameraFovDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 107
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->ACTIVE_CONFIG:Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    iget p0, v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;->cameraFovDegrees:F

    .line 113
    :cond_0
    :goto_0
    return p0

    .line 109
    :cond_1
    const/high16 v0, 0x43200000    # 160.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 110
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x44

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Reported FOV is larger than the maximum allowed at : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/high16 p0, 0x425c0000    # 55.0f

    goto :goto_0
.end method

.method private static getDeviceKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 189
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

.method public static isAutoFocusPitchChange()Z
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->ACTIVE_CONFIG:Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    iget-boolean v0, v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;->autoFocusPitchDelta:Z

    return v0
.end method

.method public static isDeviceSupported()Z
    .locals 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->IS_DEVICE_SUPPORTED:Z

    return v0
.end method

.method public static isGalaxySz()Z
    .locals 2

    .prologue
    .line 148
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GalaxySZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHammerhead()Z
    .locals 2

    .prologue
    .line 159
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldAutoFocusPitchChange(D)Z
    .locals 4

    .prologue
    .line 133
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
