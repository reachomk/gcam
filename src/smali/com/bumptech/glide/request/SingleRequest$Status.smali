.class final Lcom/bumptech/glide/request/SingleRequest$Status;
.super Ljava/lang/Enum;
.source "SingleRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/SingleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/request/SingleRequest$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TH7ARBGEHIM6Q1FCTM6IP355TP6ASBLCLPN8BQJD5N6ER35A9IN2TB5EDQ28KRKC5Q7ASPR:[I

.field public static final enum CANCELLED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

.field public static final enum CLEARED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

.field public static final enum COMPLETE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

.field public static final enum FAILED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

.field public static final enum PAUSED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

.field public static final enum PENDING$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

.field public static final enum RUNNING$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

.field public static final enum WAITING_FOR_SIZE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 49
    sput v3, Lcom/bumptech/glide/request/SingleRequest$Status;->PENDING$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 53
    sput v4, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 57
    sput v5, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 61
    sput v6, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 65
    sput v7, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 69
    const/4 v0, 0x6

    sput v0, Lcom/bumptech/glide/request/SingleRequest$Status;->CANCELLED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 73
    const/4 v0, 0x7

    sput v0, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 77
    const/16 v0, 0x8

    sput v0, Lcom/bumptech/glide/request/SingleRequest$Status;->PAUSED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/bumptech/glide/request/SingleRequest$Status;->PENDING$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    aput v2, v0, v1

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    aput v1, v0, v3

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    aput v1, v0, v4

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    aput v1, v0, v5

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    aput v1, v0, v6

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->CANCELLED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    aput v1, v0, v7

    const/4 v1, 0x6

    sget v2, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/bumptech/glide/request/SingleRequest$Status;->PAUSED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    aput v2, v0, v1

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->$VALUES$BD666RRD5TH7ARBGEHIM6Q1FCTM6IP355TP6ASBLCLPN8BQJD5N6ER35A9IN2TB5EDQ28KRKC5Q7ASPR:[I

    return-void
.end method
