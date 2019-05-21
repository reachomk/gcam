.class public final enum Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;
.super Ljava/lang/Enum;
.source "ShutterButtonHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ShutterButtonHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShutterButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

.field public static final enum CANCEL:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

.field public static final enum CONFIRM:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

.field public static final enum LENSBLUR:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

.field public static final enum PANORAMA:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

.field public static final enum PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

.field public static final enum VIDEO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

.field public static final enum VIDEO_HFR:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 792
    new-instance v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    const-string v1, "PANORAMA"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PANORAMA:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    .line 793
    new-instance v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    const-string v1, "LENSBLUR"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->LENSBLUR:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    .line 794
    new-instance v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    .line 795
    new-instance v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->VIDEO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    .line 796
    new-instance v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    const-string v1, "VIDEO_HFR"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->VIDEO_HFR:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    .line 797
    new-instance v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    const-string v1, "CANCEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->CANCEL:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    .line 798
    new-instance v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    const-string v1, "CONFIRM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->CONFIRM:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    .line 791
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PANORAMA:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->LENSBLUR:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->VIDEO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->VIDEO_HFR:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->CANCEL:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->CONFIRM:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->$VALUES:[Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

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
    .line 791
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;
    .locals 1

    .prologue
    .line 791
    sget-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->$VALUES:[Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    invoke-virtual {v0}, [Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    return-object v0
.end method
