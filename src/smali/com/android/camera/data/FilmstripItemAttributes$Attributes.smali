.class public final enum Lcom/android/camera/data/FilmstripItemAttributes$Attributes;
.super Ljava/lang/Enum;
.source "FilmstripItemAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/FilmstripItemAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Attributes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/data/FilmstripItemAttributes$Attributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field public static final enum CAN_DELETE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field public static final enum CAN_EDIT:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field private static enum CAN_OPEN_VIEWER:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field public static final enum CAN_PLAY:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field public static final enum CAN_SHARE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field public static final enum CAN_SWIPE_AWAY:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field public static final enum CAN_ZOOM_IN_PLACE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field public static final enum HAS_DETAILED_CAPTURE_INFO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field public static final enum IS_ANIMATION:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field public static final enum IS_BURST:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field public static final enum IS_IMAGE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field public static final enum IS_RENDERING:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

.field public static final enum IS_VIDEO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "HAS_DETAILED_CAPTURE_INFO"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->HAS_DETAILED_CAPTURE_INFO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 11
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "CAN_SHARE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SHARE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 12
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "CAN_EDIT"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_EDIT:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 13
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "CAN_DELETE"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_DELETE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 14
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "CAN_PLAY"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_PLAY:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 15
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "CAN_OPEN_VIEWER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_OPEN_VIEWER:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 16
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "CAN_SWIPE_AWAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SWIPE_AWAY:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 17
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "CAN_ZOOM_IN_PLACE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_ZOOM_IN_PLACE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 18
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "IS_RENDERING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_RENDERING:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 19
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "IS_IMAGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_IMAGE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 20
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "IS_VIDEO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_VIDEO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 21
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "IS_BURST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_BURST:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 22
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    const-string v1, "IS_ANIMATION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_ANIMATION:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 9
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->HAS_DETAILED_CAPTURE_INFO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SHARE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_EDIT:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_DELETE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_PLAY:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_OPEN_VIEWER:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SWIPE_AWAY:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_ZOOM_IN_PLACE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_RENDERING:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_IMAGE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_VIDEO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_BURST:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_ANIMATION:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->$VALUES:[Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/data/FilmstripItemAttributes$Attributes;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->$VALUES:[Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0}, [Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    return-object v0
.end method
