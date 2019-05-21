.class final Lcom/google/android/apps/refocus/RefocusModule$State;
.super Ljava/lang/Enum;
.source "RefocusModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/RefocusModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/refocus/RefocusModule$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TP6APJFCDQN6BQICLJ6UORLED6MUP3LDHII8KRKC5Q6AEO_:[I

.field public static final enum CAPTURING_FRAMES$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

.field public static final enum CAPTURING_PHOTO$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

.field public static final enum NOT_READY$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

.field public static final enum PREVIEW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 156
    sput v3, Lcom/google/android/apps/refocus/RefocusModule$State;->NOT_READY$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    .line 157
    sput v4, Lcom/google/android/apps/refocus/RefocusModule$State;->CAPTURING_PHOTO$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    .line 158
    sput v5, Lcom/google/android/apps/refocus/RefocusModule$State;->CAPTURING_FRAMES$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    .line 159
    sput v0, Lcom/google/android/apps/refocus/RefocusModule$State;->PREVIEW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    .line 155
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/apps/refocus/RefocusModule$State;->NOT_READY$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    aput v2, v0, v1

    sget v1, Lcom/google/android/apps/refocus/RefocusModule$State;->CAPTURING_PHOTO$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    aput v1, v0, v3

    sget v1, Lcom/google/android/apps/refocus/RefocusModule$State;->CAPTURING_FRAMES$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    aput v1, v0, v4

    sget v1, Lcom/google/android/apps/refocus/RefocusModule$State;->PREVIEW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    aput v1, v0, v5

    sput-object v0, Lcom/google/android/apps/refocus/RefocusModule$State;->$VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TP6APJFCDQN6BQICLJ6UORLED6MUP3LDHII8KRKC5Q6AEO_:[I

    return-void
.end method
