.class final Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;
.super Ljava/lang/Enum;
.source "TriggerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUL3ID5JMEPBIADQ62T359LGM6Q39DPII8KRKC5Q6AEO_:[I

.field public static final enum TRIGGERED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

.field public static final enum WAITING_FOR_TRIGGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 30
    sput v3, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->WAITING_FOR_TRIGGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    .line 31
    sput v0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->TRIGGERED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    .line 29
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->WAITING_FOR_TRIGGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->TRIGGERED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    aput v1, v0, v3

    sput-object v0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUL3ID5JMEPBIADQ62T359LGM6Q39DPII8KRKC5Q6AEO_:[I

    return-void
.end method
