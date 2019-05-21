.class public final Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$Mode;
.super Ljava/lang/Enum;
.source "OptionsBarUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4I4QRR4CKTG____:[I

.field public static final enum CAPTURE_OPTIONS$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMUS3KD5NMSSR2C5P2UTJ9CLRIUJRGEHKMURJJ89GN4LB94H6MUP357C______:I

.field public static final enum PANORAMA$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMUS3KD5NMSSR2C5P2UTJ9CLRIUJRGEHKMURJJ89GN4LB94H6MUP357C______:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 25
    sput v3, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$Mode;->CAPTURE_OPTIONS$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMUS3KD5NMSSR2C5P2UTJ9CLRIUJRGEHKMURJJ89GN4LB94H6MUP357C______:I

    .line 29
    sput v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$Mode;->PANORAMA$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMUS3KD5NMSSR2C5P2UTJ9CLRIUJRGEHKMURJJ89GN4LB94H6MUP357C______:I

    .line 17
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$Mode;->CAPTURE_OPTIONS$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMUS3KD5NMSSR2C5P2UTJ9CLRIUJRGEHKMURJJ89GN4LB94H6MUP357C______:I

    aput v2, v0, v1

    sget v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$Mode;->PANORAMA$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMUS3KD5NMSSR2C5P2UTJ9CLRIUJRGEHKMURJJ89GN4LB94H6MUP357C______:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$Mode;->$VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4I4QRR4CKTG____:[I

    return-void
.end method
