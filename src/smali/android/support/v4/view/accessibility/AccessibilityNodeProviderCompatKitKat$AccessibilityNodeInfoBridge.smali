.class Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompatKitKat.java"


# instance fields
.field final synthetic val$compat:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl;Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)V
    .locals 0

    .prologue
    .line 3102
    iput-object p2, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;->val$compat:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1130
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->createAccessibilityNodeInfo$514IIJ31DPI74RR9CGNN6TBGE1NN4T1FEOQ2UTJ9CLRIUOB3CDIN6SR9C9KMOQBKF4NK2OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UGRFDLO62T1R()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1132
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2113
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->findAccessibilityNodeInfosByText$5166KOBMC4NMOOBECSNL6T3ID5N6EEQ95566KOBMC4NNAT39DGNKOQBJEGTG____()Ljava/util/List;

    .line 2115
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFocus(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2140
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->findFocus$514IIJ31DPI74RR9CGNN6TBGE1NN4T1FEOQ2UTJ9CLRIUOB3CDIN6SR9C9KMOQBKF4NK2OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UGRFDLO62T1R()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2142
    const/4 v0, 0x0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 2106
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction$514KIJ31DPI74RR9CGNMUSPF89QMSP3CCKTIIMG_()Z

    move-result v0

    return v0
.end method
