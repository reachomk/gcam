.class final enum Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;
.super Ljava/lang/Enum;
.source "VolumeKeyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VolumeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

.field public static final enum NOOP:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

.field public static final enum SHUTTER:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

.field public static final enum ZOOM:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    const-string v1, "SHUTTER"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->SHUTTER:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    .line 32
    new-instance v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    const-string v1, "ZOOM"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->ZOOM:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    .line 33
    new-instance v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    const-string v1, "NOOP"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->NOOP:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    sget-object v1, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->SHUTTER:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->ZOOM:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->NOOP:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->$VALUES:[Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->$VALUES:[Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    invoke-virtual {v0}, [Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$VolumeMode;

    return-object v0
.end method
