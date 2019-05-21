.class public final Lcom/google/android/apps/refocus/processing/Renderer$Priority;
.super Ljava/lang/Enum;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/processing/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/refocus/processing/Renderer$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TP6APJFCDQN6BRGE9NM6PBJEDKMSPPFA9IMSP35E9IN492GE9KMUSJ9EHSJM___:[I

.field public static final enum LOW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUS3IDTHMASRJD5N6EBQICLN68PBICLP28K3ID5NN4QBKF4TG____:I

.field public static final enum NORMAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUS3IDTHMASRJD5N6EBQICLN68PBICLP28K3ID5NN4QBKF4TG____:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 22
    sput v3, Lcom/google/android/apps/refocus/processing/Renderer$Priority;->NORMAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUS3IDTHMASRJD5N6EBQICLN68PBICLP28K3ID5NN4QBKF4TG____:I

    .line 23
    sput v0, Lcom/google/android/apps/refocus/processing/Renderer$Priority;->LOW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUS3IDTHMASRJD5N6EBQICLN68PBICLP28K3ID5NN4QBKF4TG____:I

    .line 21
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/apps/refocus/processing/Renderer$Priority;->NORMAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUS3IDTHMASRJD5N6EBQICLN68PBICLP28K3ID5NN4QBKF4TG____:I

    aput v2, v0, v1

    sget v1, Lcom/google/android/apps/refocus/processing/Renderer$Priority;->LOW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUS3IDTHMASRJD5N6EBQICLN68PBICLP28K3ID5NN4QBKF4TG____:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/apps/refocus/processing/Renderer$Priority;->$VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TP6APJFCDQN6BRGE9NM6PBJEDKMSPPFA9IMSP35E9IN492GE9KMUSJ9EHSJM___:[I

    return-void
.end method
