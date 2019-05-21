.class final Lcom/ortiz/touch/TouchImageView$State;
.super Ljava/lang/Enum;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ortiz/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ortiz/touch/TouchImageView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TNN4T39F8NN8RRLCDK2UL3FELHMGIBDC5JMALJ9CLRI8KRKC5Q6AEO_:[I

.field public static final enum ANIMATE_ZOOM$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

.field public static final enum DRAG$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

.field public static final enum FLING$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

.field public static final enum NONE$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

.field public static final enum ZOOM$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 67
    sput v3, Lcom/ortiz/touch/TouchImageView$State;->NONE$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    .line 68
    sput v4, Lcom/ortiz/touch/TouchImageView$State;->DRAG$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    .line 69
    sput v5, Lcom/ortiz/touch/TouchImageView$State;->ZOOM$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    .line 70
    sput v6, Lcom/ortiz/touch/TouchImageView$State;->FLING$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    .line 71
    sput v0, Lcom/ortiz/touch/TouchImageView$State;->ANIMATE_ZOOM$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    .line 66
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/ortiz/touch/TouchImageView$State;->NONE$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    aput v2, v0, v1

    sget v1, Lcom/ortiz/touch/TouchImageView$State;->DRAG$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    aput v1, v0, v3

    sget v1, Lcom/ortiz/touch/TouchImageView$State;->ZOOM$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    aput v1, v0, v4

    sget v1, Lcom/ortiz/touch/TouchImageView$State;->FLING$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    aput v1, v0, v5

    sget v1, Lcom/ortiz/touch/TouchImageView$State;->ANIMATE_ZOOM$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    aput v1, v0, v6

    sput-object v0, Lcom/ortiz/touch/TouchImageView$State;->$VALUES$BD666RRD5TNN4T39F8NN8RRLCDK2UL3FELHMGIBDC5JMALJ9CLRI8KRKC5Q6AEO_:[I

    return-void
.end method
