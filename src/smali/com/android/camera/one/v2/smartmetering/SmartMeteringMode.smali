.class public final Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;
.super Ljava/lang/Enum;
.source "SmartMeteringMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8P9R:[I

.field public static final enum EAGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

.field public static final enum LAZY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

.field public static final enum OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4
    sput v3, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    .line 5
    sput v4, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->LAZY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    .line 6
    sput v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->EAGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    .line 3
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->LAZY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->EAGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8P9R:[I

    return-void
.end method
