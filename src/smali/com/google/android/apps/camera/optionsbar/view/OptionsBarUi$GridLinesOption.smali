.class public final enum Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;
.super Ljava/lang/Enum;
.source "OptionsBarUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GridLinesOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

.field public static final enum GRID_3x3:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

.field public static final enum GRID_4X4:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

.field public static final enum GRID_GOLDEN_RATIO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

.field public static final enum GRID_NONE:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    const-string v1, "GRID_NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_NONE:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    .line 148
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    const-string v1, "GRID_3x3"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_3x3:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    .line 149
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    const-string v1, "GRID_4X4"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_4X4:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    .line 150
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    const-string v1, "GRID_GOLDEN_RATIO"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_GOLDEN_RATIO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_NONE:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_3x3:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_4X4:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_GOLDEN_RATIO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->$VALUES:[Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput p3, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->index:I

    .line 156
    return-void
.end method

.method public static fromInt(I)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;
    .locals 1

    .prologue
    .line 163
    packed-switch p0, :pswitch_data_0

    .line 174
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_NONE:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    :goto_0
    return-object v0

    .line 165
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_NONE:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    goto :goto_0

    .line 167
    :pswitch_1
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_3x3:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    goto :goto_0

    .line 169
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_4X4:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    goto :goto_0

    .line 171
    :pswitch_3
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_GOLDEN_RATIO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static values()[Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->$VALUES:[Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    invoke-virtual {v0}, [Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->index:I

    return v0
.end method
