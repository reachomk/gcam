.class public final Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner$RunnerState;
.super Ljava/lang/Enum;
.source "StatechartRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunnerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner$RunnerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUSRKC5Q6AOR8C5P78SPFD5N78PBIDPGMOBR2C5PMABQJEHGN8PB3D1GN4T2IELN6SPBI4H97ARJECLP56T31EHIJM___:[I

.field public static final enum ACTIVE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NN6T31EHIM6Q31E9Q76BR9DPQ6ASJEC5M2UOJ1EDIIUKRKC5Q6AOR8C5P78KJLDPN6ASH4A9QMSRJ5E99N8OBKCKTG____:I

.field public static final enum INACTIVE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NN6T31EHIM6Q31E9Q76BR9DPQ6ASJEC5M2UOJ1EDIIUKRKC5Q6AOR8C5P78KJLDPN6ASH4A9QMSRJ5E99N8OBKCKTG____:I

.field public static final enum UNINITIALIZED$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NN6T31EHIM6Q31E9Q76BR9DPQ6ASJEC5M2UOJ1EDIIUKRKC5Q6AOR8C5P78KJLDPN6ASH4A9QMSRJ5E99N8OBKCKTG____:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 25
    sput v3, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner$RunnerState;->UNINITIALIZED$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NN6T31EHIM6Q31E9Q76BR9DPQ6ASJEC5M2UOJ1EDIIUKRKC5Q6AOR8C5P78KJLDPN6ASH4A9QMSRJ5E99N8OBKCKTG____:I

    .line 26
    sput v4, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner$RunnerState;->ACTIVE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NN6T31EHIM6Q31E9Q76BR9DPQ6ASJEC5M2UOJ1EDIIUKRKC5Q6AOR8C5P78KJLDPN6ASH4A9QMSRJ5E99N8OBKCKTG____:I

    .line 27
    sput v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner$RunnerState;->INACTIVE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NN6T31EHIM6Q31E9Q76BR9DPQ6ASJEC5M2UOJ1EDIIUKRKC5Q6AOR8C5P78KJLDPN6ASH4A9QMSRJ5E99N8OBKCKTG____:I

    .line 24
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner$RunnerState;->UNINITIALIZED$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NN6T31EHIM6Q31E9Q76BR9DPQ6ASJEC5M2UOJ1EDIIUKRKC5Q6AOR8C5P78KJLDPN6ASH4A9QMSRJ5E99N8OBKCKTG____:I

    aput v2, v0, v1

    sget v1, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner$RunnerState;->ACTIVE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NN6T31EHIM6Q31E9Q76BR9DPQ6ASJEC5M2UOJ1EDIIUKRKC5Q6AOR8C5P78KJLDPN6ASH4A9QMSRJ5E99N8OBKCKTG____:I

    aput v1, v0, v3

    sget v1, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner$RunnerState;->INACTIVE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NN6T31EHIM6Q31E9Q76BR9DPQ6ASJEC5M2UOJ1EDIIUKRKC5Q6AOR8C5P78KJLDPN6ASH4A9QMSRJ5E99N8OBKCKTG____:I

    aput v1, v0, v4

    sput-object v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner$RunnerState;->$VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUSRKC5Q6AOR8C5P78SPFD5N78PBIDPGMOBR2C5PMABQJEHGN8PB3D1GN4T2IELN6SPBI4H97ARJECLP56T31EHIJM___:[I

    return-void
.end method
