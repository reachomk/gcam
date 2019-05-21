.class final Lcom/android/camera/ui/UiStrings$StringUiString;
.super Ljava/lang/Object;
.source "UiStrings.java"

# interfaces
.implements Lcom/android/camera/ui/UiString;


# instance fields
.field private final placeHolders:[Ljava/lang/Object;

.field private final resourceId:I


# direct methods
.method varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/android/camera/ui/UiStrings$StringUiString;->resourceId:I

    .line 74
    iput-object p2, p0, Lcom/android/camera/ui/UiStrings$StringUiString;->placeHolders:[Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method public final generate(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/UiStrings$StringUiString;->resourceId:I

    iget-object v2, p0, Lcom/android/camera/ui/UiStrings$StringUiString;->placeHolders:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
