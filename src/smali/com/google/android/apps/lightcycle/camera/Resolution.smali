.class public final Lcom/google/android/apps/lightcycle/camera/Resolution;
.super Ljava/lang/Enum;
.source "Resolution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/lightcycle/camera/Resolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNM6OBDCLP62BQICLPMUR3LEHKMURHR:[I

.field public static final enum HIGH$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

.field public static final enum LOW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

.field public static final enum MAX$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8
    sput v3, Lcom/google/android/apps/lightcycle/camera/Resolution;->MAX$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

    .line 9
    sput v4, Lcom/google/android/apps/lightcycle/camera/Resolution;->HIGH$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

    .line 10
    sput v0, Lcom/google/android/apps/lightcycle/camera/Resolution;->LOW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

    .line 7
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/apps/lightcycle/camera/Resolution;->MAX$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

    aput v2, v0, v1

    sget v1, Lcom/google/android/apps/lightcycle/camera/Resolution;->HIGH$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

    aput v1, v0, v3

    sget v1, Lcom/google/android/apps/lightcycle/camera/Resolution;->LOW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355THM2RB5E9GIUKJ5EDNMOTBKD5NMSEO_:I

    aput v1, v0, v4

    sput-object v0, Lcom/google/android/apps/lightcycle/camera/Resolution;->$VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNM6OBDCLP62BQICLPMUR3LEHKMURHR:[I

    return-void
.end method
