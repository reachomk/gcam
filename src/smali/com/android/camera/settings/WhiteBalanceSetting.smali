.class public final Lcom/android/camera/settings/WhiteBalanceSetting;
.super Lcom/google/android/apps/camera/async/TransformedProperty;
.source "WhiteBalanceSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedProperty",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;",
        ">;"
    }
.end annotation


# instance fields
.field private originalProperty:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/camera/async/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/TransformedProperty;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 21
    iput-object p1, p0, Lcom/android/camera/settings/WhiteBalanceSetting;->originalProperty:Lcom/google/android/apps/camera/async/Observable;

    .line 22
    return-void
.end method


# virtual methods
.method public final getUnderlyingProperty()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/settings/WhiteBalanceSetting;->originalProperty:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method protected final synthetic transformInput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 13
    check-cast p1, Ljava/lang/Integer;

    .line 2026
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2038
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown WB input value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2028
    :pswitch_1
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->AUTO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    .line 2036
    :goto_0
    return-object v0

    .line 2030
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->CLOUDY:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    goto :goto_0

    .line 2032
    :pswitch_3
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->SUNNY:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    goto :goto_0

    .line 2034
    :pswitch_4
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->INCANDESCENT:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    goto :goto_0

    .line 2036
    :pswitch_5
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->FLUORESCENT:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    goto :goto_0

    .line 2026
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected final synthetic transformOutput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 13
    check-cast p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    .line 1044
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1056
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown WB output value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1054
    :goto_0
    return-object v0

    .line 1048
    :pswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1050
    :pswitch_2
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1052
    :pswitch_3
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1054
    :pswitch_4
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1044
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
