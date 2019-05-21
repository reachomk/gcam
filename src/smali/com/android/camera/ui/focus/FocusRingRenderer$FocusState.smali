.class public final Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;
.super Ljava/lang/Enum;
.source "FocusRingRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/focus/FocusRingRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FocusState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR6DTHNASPF8PNM6TBJA9KMSPQICLN68PBICLP28HJFCDQN6KRKC5Q6AEO_:[I

.field public static final enum STATE_ACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

.field public static final enum STATE_ENTER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

.field public static final enum STATE_FADE_OUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

.field public static final enum STATE_HARD_STOP$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

.field public static final enum STATE_INACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 23
    sput v3, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 24
    sput v4, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 25
    sput v5, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 26
    sput v6, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 27
    sput v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 22
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    aput v1, v0, v4

    sget v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    aput v1, v0, v5

    sget v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    aput v1, v0, v6

    sput-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR6DTHNASPF8PNM6TBJA9KMSPQICLN68PBICLP28HJFCDQN6KRKC5Q6AEO_:[I

    return-void
.end method
