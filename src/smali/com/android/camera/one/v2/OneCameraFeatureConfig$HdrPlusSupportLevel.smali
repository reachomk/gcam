.class public final Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;
.super Ljava/lang/Enum;
.source "OneCameraFeatureConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraFeatureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HdrPlusSupportLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UJRECL1M2RB5E9GKCPB1EHQN4PA3DTN6CQB74H468SIGDHQN6KRLE1O6USJK9HINCPBC7C______:[I

.field public static final enum FULL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

.field public static final enum NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 62
    sput v3, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    .line 64
    sput v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->FULL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    .line 60
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->FULL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    aput v1, v0, v3

    sput-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UJRECL1M2RB5E9GKCPB1EHQN4PA3DTN6CQB74H468SIGDHQN6KRLE1O6USJK9HINCPBC7C______:[I

    return-void
.end method
