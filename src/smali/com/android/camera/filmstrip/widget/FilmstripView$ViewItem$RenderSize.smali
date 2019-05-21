.class final Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;
.super Ljava/lang/Enum;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RenderSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TRMIP37CLQ2UHJ9DHMN6T3ID5O5CQB5ESI5CQB5ET4N8PBD4H96ARJ4CLP56QBQCKTG____:[I

.field public static final enum FULL_RES$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

.field public static final enum THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

.field public static final enum TINY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 189
    sput v3, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->TINY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    .line 190
    sput v4, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    .line 191
    sput v0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->FULL_RES$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    .line 188
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->TINY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->FULL_RES$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FETKM8PR5EGNKCQBCDLPN8SJ9E1B6IPBN4HB6IPBN95Q6AR94A9IMSP35E99MIUJ57C______:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem$RenderSize;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TRMIP37CLQ2UHJ9DHMN6T3ID5O5CQB5ESI5CQB5ET4N8PBD4H96ARJ4CLP56QBQCKTG____:[I

    return-void
.end method
