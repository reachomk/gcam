.class final Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;
.super Ljava/lang/Enum;
.source "ProcessingServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/ProcessingServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TO74RR3CLPN6QBECSNL0SJFCDIN6SR9DPJL6PBIEPKM6PADC5N62PR5E8I56PBIEPKM6PAJEHGN8P9R:[I

.field public static final enum DESTROYED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

.field public static final enum SHUTTING_DOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

.field public static final enum STARTING_UP_OR_RUNNING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 19
    sput v3, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->STARTING_UP_OR_RUNNING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    .line 20
    sput v4, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->SHUTTING_DOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    .line 21
    sput v0, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->DESTROYED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    .line 18
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->STARTING_UP_OR_RUNNING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->SHUTTING_DOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->DESTROYED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TO74RR3CLPN6QBECSNL0SJFCDIN6SR9DPJL6PBIEPKM6PADC5N62PR5E8I56PBIEPKM6PAJEHGN8P9R:[I

    return-void
.end method
