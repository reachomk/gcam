.class public final Lcom/google/android/apps/camera/advice/AdviceState$STATE;
.super Ljava/lang/Enum;
.source "AdviceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/advice/AdviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/camera/advice/AdviceState$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOB4EPKM6P9F85I7CQB3CL9N8OBKCKI56L21AH2JM___:[I

.field public static final enum DISMISSED$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR5ADQ62T354H9L8GAK8KTG____:I

.field public static final enum IGNORED$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR5ADQ62T354H9L8GAK8KTG____:I

.field public static final enum READY$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR5ADQ62T354H9L8GAK8KTG____:I

.field public static final enum SHOWING$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR5ADQ62T354H9L8GAK8KTG____:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12
    sput v3, Lcom/google/android/apps/camera/advice/AdviceState$STATE;->READY$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR5ADQ62T354H9L8GAK8KTG____:I

    .line 14
    sput v4, Lcom/google/android/apps/camera/advice/AdviceState$STATE;->SHOWING$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR5ADQ62T354H9L8GAK8KTG____:I

    .line 16
    sput v5, Lcom/google/android/apps/camera/advice/AdviceState$STATE;->DISMISSED$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR5ADQ62T354H9L8GAK8KTG____:I

    .line 18
    sput v0, Lcom/google/android/apps/camera/advice/AdviceState$STATE;->IGNORED$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR5ADQ62T354H9L8GAK8KTG____:I

    .line 10
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/apps/camera/advice/AdviceState$STATE;->READY$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR5ADQ62T354H9L8GAK8KTG____:I

    aput v2, v0, v1

    sget v1, Lcom/google/android/apps/camera/advice/AdviceState$STATE;->SHOWING$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR5ADQ62T354H9L8GAK8KTG____:I

    aput v1, v0, v3

    sget v1, Lcom/google/android/apps/camera/advice/AdviceState$STATE;->DISMISSED$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR5ADQ62T354H9L8GAK8KTG____:I

    aput v1, v0, v4

    sget v1, Lcom/google/android/apps/camera/advice/AdviceState$STATE;->IGNORED$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2P3MD5HMABQ1CHR6IOR5ADQ62T354H9L8GAK8KTG____:I

    aput v1, v0, v5

    sput-object v0, Lcom/google/android/apps/camera/advice/AdviceState$STATE;->$VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOB4EPKM6P9F85I7CQB3CL9N8OBKCKI56L21AH2JM___:[I

    return-void
.end method
